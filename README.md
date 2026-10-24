# Marquesina de Texto en Display de 7 Segmentos (Práctica 3)

Proyecto de diseño digital implementado **con esquemáticos** en Xilinx ISE para la tarjeta **Digilent Nexys 2 (FPGA Spartan-3E)**. Muestra un mensaje que **se desplaza como marquesina** a lo largo de los 4 dígitos del display de 7 segmentos, con control de dirección, pausa (hold) y reinicio (clear).

El mensaje grabado en las memorias ROM es:

```
VINCERE SCIS. VINCERE POSSIS.
```

(En el display la **V** se dibuja como **U**, al estilo del latín clásico, y la **R** con la forma de una **A**, porque un display de 7 segmentos no puede formar esas letras de otra manera).

## Tabla de contenido

- [Descripción general](#descripción-general)
- [Hardware objetivo](#hardware-objetivo)
- [Arquitectura del sistema](#arquitectura-del-sistema)
- [Descripción de módulos](#descripción-de-módulos)
- [Controles](#controles)
- [Asignación de pines](#asignación-de-pines)
- [Estructura del repositorio](#estructura-del-repositorio)
- [Cómo compilar y programar](#cómo-compilar-y-programar)
- [Notas y consideraciones](#notas-y-consideraciones)
- [Autoría](#autoría)

## Descripción general

La idea es simple: el texto está guardado en **cuatro memorias ROM de 32 posiciones**, una por cada dígito del display. Cada ROM contiene **el mismo mensaje desplazado una posición** respecto a la anterior. Las cuatro ROM se direccionan con contadores que avanzan juntos, de modo que en cada paso cada dígito muestra el carácter "siguiente" al del dígito de su izquierda. Al incrementar la dirección, el texto entra por la derecha y avanza hacia la izquierda.

| Función | Descripción |
|---|---|
| Desplazamiento | Avanza un carácter aproximadamente cada 1.3 s |
| Dirección | Invierte el sentido del desplazamiento (cuenta ascendente/descendente) |
| Hold (pausa) | Congela el texto en la posición actual |
| Clear | Regresa la marquesina al inicio del mensaje |

## Hardware objetivo

- **Tarjeta:** Digilent **Nexys 2**
- **FPGA:** Xilinx **Spartan-3E** `xc3s500e-5fg320`
- **Reloj:** oscilador de 50 MHz de la tarjeta (pin B8)
- **Herramienta:** Xilinx ISE Design Suite 14.7 (esquemáticos `.sch`, IP Cores con CORE Generator)
- **Display:** 7 segmentos de 4 dígitos multiplexados (ánodo común, activo en bajo)

## Arquitectura del sistema

```
                 ┌─────────┐ S   (~0.75 Hz) ──────────────────────────┐
   clk ─────────►│   DIV   │ D17 (~95 Hz) ──► s0 ┐                    │ clk
                 │         │ D18 (~48 Hz) ──► s1 ┤                    ▼
                 └─────────┘                     │   ┌───────────────────────────┐
   direction ──►INV──► up ───────────────────────┼──►│ counter_5bits  x4         │
   hold ───────►INV──► ce ───────────────────────┼──►│ (contadores 0–31 up/down) │
   clr ────────────────► sclr ───────────────────┼──►└───────────────────────────┘
                                                 │         │ q(4:0) (uno por ROM)
                                                 │         ▼
                                                 │   ┌─────────────────────────────────┐
                                                 │   │ rom_7_seg   (text.coe)  → l0    │
                                                 │   │ rom_7_seg1  (text1.coe) → l1    │
                                                 │   │ rom_7_seg2  (text2.coe) → l2    │
                                                 │   │ rom_7_seg3  (text3.coe) → l3    │
                                                 │   └─────────────────────────────────┘
                                                 │         │ 8 bits por dígito (a–g, dp)
                                                 ▼         ▼
                                           ┌────────────────────┐
                                           │     displayer      │──► a b c d e f g dp
                                           │ (multiplexor 4→1)  │──► slct0..slct3
                                           └────────────────────┘
```

Esquemático principal: [`assets/main.png`](assets/main.png)

## Descripción de módulos

### main (top level)
Archivo: `main.sch`. Interconecta el divisor de frecuencia, los 4 contadores, las 4 ROM y el multiplexor del display. Las entradas `direction` y `hold` pasan por inversores antes de llegar a `up` y `ce` de los contadores, así que con los switches en 0 el texto **avanza** normalmente.

### counter_5bits (IP Core, ×4)
Archivos: `ipcore_dir/counter_5bits.*`. Contador binario de 5 bits (0–31) generado con *Binary Counter* de CORE Generator, en modo **UPDOWN**, con **Clock Enable** y **Synchronous Clear**. Cada contador direcciona una ROM. Configuración: [`assets/counter_5bits.png`](assets/counter_5bits.png).

### rom_7_seg, rom_7_seg1, rom_7_seg2, rom_7_seg3 (IP Core, ×4)
Archivos: `ipcore_dir/rom_7_seg*.xco` + `text.coe`, `text1.coe`, `text2.coe`, `text3.coe`. Memorias ROM distribuidas de **32 × 8 bits**. Cada byte es directamente el patrón del dígito (bit 0 = segmento a … bit 6 = segmento g, bit 7 = punto decimal; **activo en bajo**, `FF` = dígito apagado).

| ROM | Archivo | Contenido | Dígito |
|---|---|---|---|
| `rom_7_seg`  | `text.coe`  | Mensaje original | AN0 (derecha) |
| `rom_7_seg1` | `text1.coe` | Mensaje recorrido 1 posición | AN1 |
| `rom_7_seg2` | `text2.coe` | Mensaje recorrido 2 posiciones | AN2 |
| `rom_7_seg3` | `text3.coe` | Mensaje recorrido 3 posiciones | AN3 (izquierda) |

Capturas de los `.coe`: [`assets/coe_text0.png`](assets/coe_text0.png) … [`assets/coe_text3.png`](assets/coe_text3.png); configuración de la ROM: [`assets/rom_7_seg.png`](assets/rom_7_seg.png).

Para **cambiar el mensaje** basta con editar los cuatro `.coe` (manteniendo el corrimiento de una posición entre ellos) y regenerar los cores.

### displayer
Archivos: `displayer.sch` / `.sym` (reutilizado de la Práctica 2). Multiplexor de 4 entradas de 8 bits construido con 8× `M4_1E` y un decodificador `D2_4E` con salidas invertidas para seleccionar el ánodo activo (`slct0`–`slct3`). Las señales `s0`/`s1` vienen del divisor de frecuencia y recorren los cuatro dígitos lo bastante rápido para que el ojo los vea encendidos al mismo tiempo. Esquemático: [`assets/displayer.png`](assets/displayer.png).

### DIV
Archivos: `DIV.v` / `DIV.sym`. Divisor de frecuencia formado por **2× `CC16CE`** en cascada (contador de 32 bits). Esquemático: [`assets/div.png`](assets/div.png).

| Puerto | Bit del contador | Frecuencia (50 MHz) | Uso |
|---|---|---|---|
| `S`   | 25 | ≈ 0.75 Hz | Reloj de los contadores (velocidad del desplazamiento) |
| `D17` | 18 | ≈ 95 Hz   | `s0` del multiplexor |
| `D18` | 19 | ≈ 48 Hz   | `s1` del multiplexor |

### decoder, FlipFlopD5Entrys (no usados en el top)
Versiones previas de prueba: `decoder.sch` (ROM con buffers en las 5 líneas de dirección) y `FlipFlopD5Entrys.sch` (registro de 5 bits con `IFD`). Se conservan en el proyecto pero `main.sch` no los instancia.

## Controles

| Señal | Pin | Switch | Función |
|---|---|---|---|
| `direction` | R17 | SW7 | 0 = el texto avanza a la izquierda · 1 = retrocede |
| `hold`      | N17 | SW6 | 1 = pausa |
| `clr`       | L13 | SW5 | 1 = reinicia al inicio del mensaje (síncrono: mantenerlo ~1 s) |

## Asignación de pines

Basado en `pines.ucf`:

| Señal | Pin | Señal | Pin |
|---|---|---|---|
| `clk` | B8 | `slct0` (AN0) | F17 |
| `a` | L18 | `slct1` (AN1) | H17 |
| `b` | F18 | `slct2` (AN2) | C18 |
| `c` | D17 | `slct3` (AN3) | F15 |
| `d` | D16 | `direction` | R17 |
| `e` | G14 | `hold` | N17 |
| `f` | J17 | `clr` | L13 |
| `g` | H14 | `dp` | C17 |

## Estructura del repositorio

```
Practica3/
├── assets/                  # Capturas de esquemáticos y configuración de los IP cores
├── bin/
│   └── main.bit             # Bitstream listo para programar la Nexys 2
├── ipcore_dir/              # IP cores (counter_5bits, rom_7_seg 0–3): .xco + netlists .ngc
├── main.sch                 # Esquemático principal (top)
├── displayer.sch / .sym     # Multiplexor del display
├── DIV.v / DIV.sym          # Divisor de frecuencia
├── decoder.sch, FlipFlopD5Entrys.sch   # Módulos de prueba (no usados)
├── text.coe … text3.coe     # Contenido de las 4 ROM (el mensaje)
├── pines.ucf                # Restricciones de pines
└── Practica3.xise           # Proyecto de Xilinx ISE
```

## Cómo compilar y programar

**Solo programar** (sin compilar): carga `bin/main.bit` en la Nexys 2 con **Digilent Adept** o **iMPACT**. Con Adept desde terminal:

```bash
djtgcfg prog -d Nexys2 -i 0 -f bin/main.bit
```

**Compilar desde el código:**
1. Abre `Practica3.xise` en Xilinx ISE 14.7.
2. Selecciona `main` como *Top Module* (ya está configurado).
3. Ejecuta **Generate Programming File**. El resultado es `main.bit`.

El proyecto compila desde un clon limpio del repositorio (verificado con ISE 14.7: síntesis, place & route y bitgen sin errores, todas las restricciones de tiempo cumplidas).

## Notas y consideraciones

- El reloj de los contadores sale directamente del divisor (`S`), es decir, es un reloj derivado. Funciona bien a esta frecuencia tan baja, aunque en diseños más grandes es preferible usar el reloj principal con una señal de *clock enable*.
- El `clr` es **síncrono** al reloj lento (~0.75 Hz), por lo que hay que mantener el switch en 1 alrededor de un segundo para que tenga efecto.
- Los `.xco` de las ROM apuntan a los `.coe` con una ruta absoluta. Si regeneras los cores en otra computadora, vuelve a seleccionar `text*.coe` en CORE Generator.
- `DIV.v` es la netlist que ISE generó a partir del esquemático del divisor (versión con salidas `D17`/`D18`). El `.sch` de esa versión ya no existe, pero la netlist es funcionalmente idéntica y permite compilar el proyecto sin depender de la carpeta de la Práctica 1.

## Autoría

El diseño, los esquemáticos y el código de esta práctica son obra de **Esteban Santiago**. La documentación (este README) se redactó con ayuda de Claude (IA).
