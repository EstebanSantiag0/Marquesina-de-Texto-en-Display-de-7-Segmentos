<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="o0" />
        <signal name="o1" />
        <signal name="o2" />
        <signal name="o3" />
        <signal name="o4" />
        <signal name="e0" />
        <signal name="e1" />
        <signal name="e2" />
        <signal name="e3" />
        <signal name="e4" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o3" />
        <port polarity="Output" name="o4" />
        <port polarity="Input" name="e0" />
        <port polarity="Input" name="e1" />
        <port polarity="Input" name="e2" />
        <port polarity="Input" name="e3" />
        <port polarity="Input" name="e4" />
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <block symbolname="ifd" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="e0" name="D" />
            <blockpin signalname="o0" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_2">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="e1" name="D" />
            <blockpin signalname="o1" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_3">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="e2" name="D" />
            <blockpin signalname="o2" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_4">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="e3" name="D" />
            <blockpin signalname="o3" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_5">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="e4" name="D" />
            <blockpin signalname="o4" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1120" name="XLXI_1" orien="R0" />
        <instance x="1136" y="1424" name="XLXI_2" orien="R0" />
        <instance x="1136" y="1712" name="XLXI_3" orien="R0" />
        <instance x="1136" y="2016" name="XLXI_4" orien="R0" />
        <instance x="1136" y="2320" name="XLXI_5" orien="R0" />
        <branch name="C">
            <wire x2="992" y1="2192" y2="2192" x1="912" />
            <wire x2="1120" y1="2192" y2="2192" x1="992" />
            <wire x2="1136" y1="2192" y2="2192" x1="1120" />
            <wire x2="1136" y1="1888" y2="1888" x1="992" />
            <wire x2="992" y1="1888" y2="1904" x1="992" />
            <wire x2="1072" y1="1904" y2="1904" x1="992" />
            <wire x2="992" y1="1904" y2="2192" x1="992" />
            <wire x2="1072" y1="1584" y2="1904" x1="1072" />
            <wire x2="1088" y1="1584" y2="1584" x1="1072" />
            <wire x2="1136" y1="1584" y2="1584" x1="1088" />
            <wire x2="1136" y1="992" y2="992" x1="1088" />
            <wire x2="1088" y1="992" y2="1296" x1="1088" />
            <wire x2="1088" y1="1296" y2="1584" x1="1088" />
            <wire x2="1136" y1="1296" y2="1296" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="912" y="2192" name="C" orien="R180" />
        <branch name="o0">
            <wire x2="1552" y1="864" y2="864" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="864" name="o0" orien="R0" />
        <branch name="o1">
            <wire x2="1552" y1="1168" y2="1168" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1168" name="o1" orien="R0" />
        <branch name="o2">
            <wire x2="1552" y1="1456" y2="1456" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1456" name="o2" orien="R0" />
        <branch name="o3">
            <wire x2="1552" y1="1760" y2="1760" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1760" name="o3" orien="R0" />
        <branch name="o4">
            <wire x2="1552" y1="2064" y2="2064" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="2064" name="o4" orien="R0" />
        <branch name="e0">
            <wire x2="1136" y1="864" y2="864" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="864" name="e0" orien="R180" />
        <branch name="e1">
            <wire x2="1136" y1="1168" y2="1168" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1168" name="e1" orien="R180" />
        <branch name="e2">
            <wire x2="1136" y1="1456" y2="1456" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1456" name="e2" orien="R180" />
        <branch name="e3">
            <wire x2="1136" y1="1760" y2="1760" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1760" name="e3" orien="R180" />
        <branch name="e4">
            <wire x2="1136" y1="2064" y2="2064" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="2064" name="e4" orien="R180" />
    </sheet>
</drawing>