<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="entries(4:0)" />
        <signal name="entries(0)" />
        <signal name="entries(1)" />
        <signal name="entries(2)" />
        <signal name="entries(3)" />
        <signal name="entries(4)" />
        <signal name="e0" />
        <signal name="e1" />
        <signal name="e2" />
        <signal name="e3" />
        <signal name="e4" />
        <signal name="salida(7:0)" />
        <port polarity="Input" name="e0" />
        <port polarity="Input" name="e1" />
        <port polarity="Input" name="e2" />
        <port polarity="Input" name="e3" />
        <port polarity="Input" name="e4" />
        <port polarity="Output" name="salida(7:0)" />
        <blockdef name="rom_7_seg">
            <timestamp>2026-2-18T17:39:3</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="rom_7_seg" name="XLXI_1">
            <blockpin signalname="entries(4:0)" name="a(4:0)" />
            <blockpin signalname="salida(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="e0" name="I" />
            <blockpin signalname="entries(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="e1" name="I" />
            <blockpin signalname="entries(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="e2" name="I" />
            <blockpin signalname="entries(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="e3" name="I" />
            <blockpin signalname="entries(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="e4" name="I" />
            <blockpin signalname="entries(4)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1264" name="XLXI_1" orien="R0">
        </instance>
        <branch name="entries(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1344" type="branch" />
            <wire x2="1216" y1="1344" y2="1392" x1="1216" />
            <wire x2="1216" y1="1392" y2="1456" x1="1216" />
            <wire x2="1216" y1="1456" y2="1520" x1="1216" />
            <wire x2="1216" y1="1520" y2="1584" x1="1216" />
            <wire x2="1216" y1="1584" y2="1648" x1="1216" />
            <wire x2="1360" y1="1344" y2="1344" x1="1216" />
            <wire x2="1552" y1="1344" y2="1344" x1="1360" />
        </branch>
        <instance x="832" y="1424" name="XLXI_2" orien="R0" />
        <instance x="832" y="1488" name="XLXI_3" orien="R0" />
        <instance x="832" y="1552" name="XLXI_4" orien="R0" />
        <instance x="832" y="1616" name="XLXI_5" orien="R0" />
        <instance x="832" y="1680" name="XLXI_6" orien="R0" />
        <bustap x2="1120" y1="1392" y2="1392" x1="1216" />
        <branch name="entries(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1392" type="branch" />
            <wire x2="1088" y1="1392" y2="1392" x1="1056" />
            <wire x2="1120" y1="1392" y2="1392" x1="1088" />
        </branch>
        <bustap x2="1120" y1="1456" y2="1456" x1="1216" />
        <branch name="entries(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1456" type="branch" />
            <wire x2="1104" y1="1456" y2="1456" x1="1056" />
            <wire x2="1120" y1="1456" y2="1456" x1="1104" />
        </branch>
        <bustap x2="1120" y1="1520" y2="1520" x1="1216" />
        <branch name="entries(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1520" type="branch" />
            <wire x2="1104" y1="1520" y2="1520" x1="1056" />
            <wire x2="1120" y1="1520" y2="1520" x1="1104" />
        </branch>
        <bustap x2="1120" y1="1584" y2="1584" x1="1216" />
        <branch name="entries(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1584" type="branch" />
            <wire x2="1104" y1="1584" y2="1584" x1="1056" />
            <wire x2="1120" y1="1584" y2="1584" x1="1104" />
        </branch>
        <bustap x2="1120" y1="1648" y2="1648" x1="1216" />
        <branch name="entries(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1648" type="branch" />
            <wire x2="1104" y1="1648" y2="1648" x1="1056" />
            <wire x2="1120" y1="1648" y2="1648" x1="1104" />
        </branch>
        <branch name="e0">
            <wire x2="832" y1="1392" y2="1392" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1392" name="e0" orien="R180" />
        <branch name="e1">
            <wire x2="832" y1="1456" y2="1456" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1456" name="e1" orien="R180" />
        <branch name="e2">
            <wire x2="832" y1="1520" y2="1520" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1520" name="e2" orien="R180" />
        <branch name="e3">
            <wire x2="832" y1="1584" y2="1584" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1584" name="e3" orien="R180" />
        <branch name="e4">
            <wire x2="832" y1="1648" y2="1648" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1648" name="e4" orien="R180" />
        <branch name="salida(7:0)">
            <wire x2="1872" y1="1344" y2="1344" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1344" name="salida(7:0)" orien="R0" />
    </sheet>
</drawing>