// DIV — divisor de frecuencia (2x CC16CE en cascada = contador de 32 bits).
// Netlist generada por ISE (sch2hdl) a partir del esquemático DIV.sch con salidas D17/D18;
// el .sch original de esa versión ya no existe, esta netlist es funcionalmente idéntica.
// Salidas con reloj de 50 MHz: S = bit 25 (~0.75 Hz), D17 = bit 18 (~95 Hz), D18 = bit 19 (~48 Hz).
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : DIV.vf
// /___/   /\     Timestamp : 02/19/2026 04:51:29
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -sympath /home/teban/Practica3/ipcore_dir -intstyle ise -family spartan3e -verilog /home/teban/Practica3/DIV.vf -w /home/teban/Practica1/DIV.sch
//Design Name: DIV
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module CC16CE_MXILINX_DIV(C, 
                          CE, 
                          CLR, 
                          CEO, 
                          Q, 
                          TC);

    input C;
    input CE;
    input CLR;
   output CEO;
   output [15:0] Q;
   output TC;
   
   wire C0;
   wire C1;
   wire C2;
   wire C3;
   wire C4;
   wire C5;
   wire C6;
   wire C7;
   wire C8;
   wire C9;
   wire C10;
   wire C11;
   wire C12;
   wire C13;
   wire C14;
   wire C15;
   wire TC_1;
   wire TQ0;
   wire TQ1;
   wire TQ2;
   wire TQ3;
   wire TQ4;
   wire TQ5;
   wire TQ6;
   wire TQ7;
   wire TQ8;
   wire TQ9;
   wire TQ10;
   wire TQ11;
   wire TQ12;
   wire TQ13;
   wire TQ14;
   wire TQ15;
   wire XLXN_38;
   wire XLXN_39;
   wire XLXN_40;
   wire [15:0] Q_DUMMY;
   
   assign Q[15:0] = Q_DUMMY[15:0];
   MUXCY_L  I_36_4 (.CI(C0), 
                   .DI(XLXN_38), 
                   .S(Q_DUMMY[0]), 
                   .LO(C1));
   XORCY  I_36_6 (.CI(C0), 
                 .LI(Q_DUMMY[0]), 
                 .O(TQ0));
   MUXCY_L  I_36_26 (.CI(C1), 
                    .DI(XLXN_38), 
                    .S(Q_DUMMY[1]), 
                    .LO(C2));
   XORCY  I_36_28 (.CI(C1), 
                  .LI(Q_DUMMY[1]), 
                  .O(TQ1));
   FDCE #( .INIT(1'b0) ) I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ1), 
                 .Q(Q_DUMMY[1]));
   FDCE #( .INIT(1'b0) ) I_36_36 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ0), 
                 .Q(Q_DUMMY[0]));
   FDCE #( .INIT(1'b0) ) I_36_224 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ2), 
                  .Q(Q_DUMMY[2]));
   XORCY  I_36_226 (.CI(C2), 
                   .LI(Q_DUMMY[2]), 
                   .O(TQ2));
   MUXCY_L  I_36_233 (.CI(C2), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[2]), 
                     .LO(C3));
   FDCE #( .INIT(1'b0) ) I_36_237 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ3), 
                  .Q(Q_DUMMY[3]));
   XORCY  I_36_239 (.CI(C3), 
                   .LI(Q_DUMMY[3]), 
                   .O(TQ3));
   MUXCY_L  I_36_246 (.CI(C3), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[3]), 
                     .LO(C4));
   FDCE #( .INIT(1'b0) ) I_36_250 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ4), 
                  .Q(Q_DUMMY[4]));
   XORCY  I_36_252 (.CI(C4), 
                   .LI(Q_DUMMY[4]), 
                   .O(TQ4));
   MUXCY_L  I_36_259 (.CI(C4), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[4]), 
                     .LO(C5));
   FDCE #( .INIT(1'b0) ) I_36_263 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ5), 
                  .Q(Q_DUMMY[5]));
   XORCY  I_36_265 (.CI(C5), 
                   .LI(Q_DUMMY[5]), 
                   .O(TQ5));
   MUXCY_L  I_36_272 (.CI(C5), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[5]), 
                     .LO(C6));
   FDCE #( .INIT(1'b0) ) I_36_276 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ6), 
                  .Q(Q_DUMMY[6]));
   XORCY  I_36_278 (.CI(C6), 
                   .LI(Q_DUMMY[6]), 
                   .O(TQ6));
   MUXCY_L  I_36_285 (.CI(C6), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[6]), 
                     .LO(C7));
   FDCE #( .INIT(1'b0) ) I_36_289 (.C(C), 
                  .CE(CE), 
                  .CLR(CLR), 
                  .D(TQ7), 
                  .Q(Q_DUMMY[7]));
   XORCY  I_36_291 (.CI(C7), 
                   .LI(Q_DUMMY[7]), 
                   .O(TQ7));
   MUXCY_L  I_36_298 (.CI(C7), 
                     .DI(XLXN_38), 
                     .S(Q_DUMMY[7]), 
                     .LO(C8));
   GND  I_36_886 (.G(XLXN_38));
   VCC  I_36_923 (.P(C0));
   FDCE #( .INIT(1'b0) ) I_36_1095 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ8), 
                   .Q(Q_DUMMY[8]));
   XORCY  I_36_1100 (.CI(C14), 
                    .LI(Q_DUMMY[14]), 
                    .O(TQ14));
   FDCE #( .INIT(1'b0) ) I_36_1101 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ14), 
                   .Q(Q_DUMMY[14]));
   FDCE #( .INIT(1'b0) ) I_36_1102 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ12), 
                   .Q(Q_DUMMY[12]));
   XORCY  I_36_1103 (.CI(C12), 
                    .LI(Q_DUMMY[12]), 
                    .O(TQ12));
   FDCE #( .INIT(1'b0) ) I_36_1104 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ10), 
                   .Q(Q_DUMMY[10]));
   XORCY  I_36_1105 (.CI(C10), 
                    .LI(Q_DUMMY[10]), 
                    .O(TQ10));
   XORCY  I_36_1106 (.CI(C8), 
                    .LI(Q_DUMMY[8]), 
                    .O(TQ8));
   XORCY  I_36_1112 (.CI(C15), 
                    .LI(Q_DUMMY[15]), 
                    .O(TQ15));
   FDCE #( .INIT(1'b0) ) I_36_1113 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ15), 
                   .Q(Q_DUMMY[15]));
   FDCE #( .INIT(1'b0) ) I_36_1114 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ13), 
                   .Q(Q_DUMMY[13]));
   XORCY  I_36_1115 (.CI(C13), 
                    .LI(Q_DUMMY[13]), 
                    .O(TQ13));
   FDCE #( .INIT(1'b0) ) I_36_1116 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ11), 
                   .Q(Q_DUMMY[11]));
   XORCY  I_36_1117 (.CI(C11), 
                    .LI(Q_DUMMY[11]), 
                    .O(TQ11));
   FDCE #( .INIT(1'b0) ) I_36_1118 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(TQ9), 
                   .Q(Q_DUMMY[9]));
   XORCY  I_36_1119 (.CI(C9), 
                    .LI(Q_DUMMY[9]), 
                    .O(TQ9));
   MUXCY  I_36_1140 (.CI(C15), 
                    .DI(XLXN_39), 
                    .S(Q_DUMMY[15]), 
                    .O(TC_1));
   MUXCY_L  I_36_1141 (.CI(C14), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[14]), 
                      .LO(C15));
   MUXCY_L  I_36_1142 (.CI(C13), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[13]), 
                      .LO(C14));
   MUXCY_L  I_36_1143 (.CI(C12), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[12]), 
                      .LO(C13));
   MUXCY_L  I_36_1144 (.CI(C11), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[11]), 
                      .LO(C12));
   MUXCY_L  I_36_1145 (.CI(C10), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[10]), 
                      .LO(C11));
   MUXCY_L  I_36_1146 (.CI(C9), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[9]), 
                      .LO(C10));
   MUXCY_L  I_36_1147 (.CI(C8), 
                      .DI(XLXN_39), 
                      .S(Q_DUMMY[8]), 
                      .LO(C9));
   GND  I_36_1269 (.G(XLXN_39));
   AND2  XLXI_1 (.I0(XLXN_40), 
                .I1(TC_1), 
                .O(TC));
   AND3  XLXI_2 (.I0(XLXN_40), 
                .I1(CE), 
                .I2(TC_1), 
                .O(CEO));
   INV  XLXI_3 (.I(CLR), 
               .O(XLXN_40));
endmodule
`timescale 1ns / 1ps

module DIV(C, 
           D17, 
           D18, 
           S);

    input C;
   output D17;
   output D18;
   output S;
   
   wire [15:0] O;
   wire XLXN_15;
   wire XLXN_16;
   wire XLXN_18;
   
   (* HU_SET = "XLXI_8_0" *) 
   CC16CE_MXILINX_DIV  XLXI_8 (.C(C), 
                              .CE(XLXN_16), 
                              .CLR(XLXN_18), 
                              .CEO(XLXN_15), 
                              .Q(), 
                              .TC());
   (* HU_SET = "XLXI_9_1" *) 
   CC16CE_MXILINX_DIV  XLXI_9 (.C(C), 
                              .CE(XLXN_15), 
                              .CLR(XLXN_18), 
                              .CEO(), 
                              .Q(O[15:0]), 
                              .TC());
   PULLDOWN  XLXI_10 (.O(XLXN_18));
   VCC  XLXI_11 (.P(XLXN_16));
   BUF  XLXI_14 (.I(O[9]), 
                .O(S));
   BUF  XLXI_17 (.I(O[3]), 
                .O(D18));
   BUF  XLXI_18 (.I(O[2]), 
                .O(D17));
endmodule
