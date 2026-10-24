<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_182" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185" />
        <signal name="XLXN_186" />
        <signal name="XLXN_187" />
        <signal name="XLXN_188" />
        <signal name="XLXN_189" />
        <signal name="XLXN_190" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_193" />
        <signal name="XLXN_194" />
        <signal name="XLXN_195" />
        <signal name="XLXN_196" />
        <signal name="XLXN_239" />
        <signal name="XLXN_240" />
        <signal name="XLXN_241" />
        <signal name="XLXN_242(4:0)" />
        <signal name="XLXN_243(4:0)" />
        <signal name="XLXN_244(4:0)" />
        <signal name="XLXN_245(4:0)" />
        <signal name="XLXN_246(7:0)" />
        <signal name="XLXN_247(7:0)" />
        <signal name="XLXN_248(7:0)" />
        <signal name="XLXN_249(7:0)" />
        <signal name="XLXN_250" />
        <signal name="XLXN_251" />
        <signal name="XLXN_253" />
        <signal name="XLXN_255" />
        <signal name="XLXN_256" />
        <signal name="clr" />
        <signal name="XLXN_258" />
        <signal name="XLXN_259" />
        <signal name="XLXN_260" />
        <signal name="XLXN_261" />
        <signal name="XLXN_262" />
        <signal name="XLXN_263" />
        <signal name="hold" />
        <signal name="direction" />
        <signal name="XLXN_266" />
        <signal name="XLXN_267" />
        <signal name="XLXN_268" />
        <signal name="clk" />
        <signal name="XLXN_270" />
        <signal name="XLXN_271" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="dp" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="slct0" />
        <signal name="slct1" />
        <signal name="slct2" />
        <signal name="slct3" />
        <port polarity="Input" name="clr" />
        <port polarity="Input" name="hold" />
        <port polarity="Input" name="direction" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="dp" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="slct0" />
        <port polarity="Output" name="slct1" />
        <port polarity="Output" name="slct2" />
        <port polarity="Output" name="slct3" />
        <blockdef name="counter_5bits">
            <timestamp>2026-2-18T20:59:56</timestamp>
            <rect width="512" x="32" y="32" height="384" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="208" y2="208" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="32" y1="304" y2="304" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="rom_7_seg">
            <timestamp>2026-2-19T10:38:37</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="rom_7_seg1">
            <timestamp>2026-2-19T10:40:2</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="displayer">
            <timestamp>2026-2-18T23:12:44</timestamp>
            <rect width="256" x="64" y="-768" height="768" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="rom_7_seg2">
            <timestamp>2026-2-19T10:41:9</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="rom_7_seg3">
            <timestamp>2026-2-19T10:42:47</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="DIV">
            <timestamp>2026-2-18T23:13:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="counter_5bits" name="XLXI_115">
            <blockpin signalname="XLXN_260" name="up" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_263" name="ce" />
            <blockpin signalname="clr" name="sclr" />
            <blockpin signalname="XLXN_243(4:0)" name="q(4:0)" />
        </block>
        <block symbolname="counter_5bits" name="XLXI_116">
            <blockpin signalname="XLXN_260" name="up" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_263" name="ce" />
            <blockpin signalname="clr" name="sclr" />
            <blockpin signalname="XLXN_244(4:0)" name="q(4:0)" />
        </block>
        <block symbolname="counter_5bits" name="XLXI_117">
            <blockpin signalname="XLXN_260" name="up" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_263" name="ce" />
            <blockpin signalname="clr" name="sclr" />
            <blockpin signalname="XLXN_242(4:0)" name="q(4:0)" />
        </block>
        <block symbolname="counter_5bits" name="XLXI_118">
            <blockpin signalname="XLXN_260" name="up" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_263" name="ce" />
            <blockpin signalname="clr" name="sclr" />
            <blockpin signalname="XLXN_245(4:0)" name="q(4:0)" />
        </block>
        <block symbolname="rom_7_seg" name="XLXI_119">
            <blockpin signalname="XLXN_242(4:0)" name="a(4:0)" />
            <blockpin signalname="XLXN_246(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="rom_7_seg1" name="XLXI_120">
            <blockpin signalname="XLXN_243(4:0)" name="a(4:0)" />
            <blockpin signalname="XLXN_247(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="displayer" name="XLXI_121">
            <blockpin signalname="a" name="a" />
            <blockpin signalname="b" name="b" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="d" name="d" />
            <blockpin signalname="dp" name="dp" />
            <blockpin signalname="e" name="e" />
            <blockpin signalname="f" name="f" />
            <blockpin signalname="g" name="g" />
            <blockpin signalname="XLXN_246(7:0)" name="l0(7:0)" />
            <blockpin signalname="XLXN_247(7:0)" name="l1(7:0)" />
            <blockpin signalname="XLXN_248(7:0)" name="l2(7:0)" />
            <blockpin signalname="XLXN_249(7:0)" name="l3(7:0)" />
            <blockpin signalname="XLXN_270" name="s0" />
            <blockpin signalname="XLXN_271" name="s1" />
            <blockpin signalname="slct0" name="slct0" />
            <blockpin signalname="slct1" name="slct1" />
            <blockpin signalname="slct2" name="slct2" />
            <blockpin signalname="slct3" name="slct3" />
        </block>
        <block symbolname="rom_7_seg2" name="XLXI_122">
            <blockpin signalname="XLXN_244(4:0)" name="a(4:0)" />
            <blockpin signalname="XLXN_248(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="rom_7_seg3" name="XLXI_123">
            <blockpin signalname="XLXN_245(4:0)" name="a(4:0)" />
            <blockpin signalname="XLXN_249(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_124">
            <blockpin signalname="hold" name="I" />
            <blockpin signalname="XLXN_263" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_128">
            <blockpin signalname="direction" name="I" />
            <blockpin signalname="XLXN_260" name="O" />
        </block>
        <block symbolname="DIV" name="XLXI_129">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_270" name="D17" />
            <blockpin signalname="XLXN_271" name="D18" />
            <blockpin signalname="XLXN_268" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="656" name="XLXI_115" orien="R0">
        </instance>
        <instance x="624" y="1088" name="XLXI_116" orien="R0">
        </instance>
        <instance x="624" y="192" name="XLXI_117" orien="R0">
        </instance>
        <instance x="640" y="1552" name="XLXI_118" orien="R0">
        </instance>
        <instance x="1472" y="80" name="XLXI_119" orien="R0">
        </instance>
        <instance x="1488" y="656" name="XLXI_120" orien="R0">
        </instance>
        <instance x="2224" y="1456" name="XLXI_121" orien="R0">
        </instance>
        <instance x="1488" y="1184" name="XLXI_122" orien="R0">
        </instance>
        <instance x="1488" y="1728" name="XLXI_123" orien="R0">
        </instance>
        <branch name="XLXN_242(4:0)">
            <wire x2="1328" y1="336" y2="336" x1="1200" />
            <wire x2="1328" y1="160" y2="336" x1="1328" />
            <wire x2="1472" y1="160" y2="160" x1="1328" />
        </branch>
        <branch name="XLXN_243(4:0)">
            <wire x2="1344" y1="800" y2="800" x1="1200" />
            <wire x2="1344" y1="736" y2="800" x1="1344" />
            <wire x2="1488" y1="736" y2="736" x1="1344" />
        </branch>
        <branch name="XLXN_244(4:0)">
            <wire x2="1344" y1="1232" y2="1232" x1="1200" />
            <wire x2="1344" y1="1232" y2="1264" x1="1344" />
            <wire x2="1488" y1="1264" y2="1264" x1="1344" />
        </branch>
        <branch name="XLXN_245(4:0)">
            <wire x2="1344" y1="1696" y2="1696" x1="1216" />
            <wire x2="1344" y1="1696" y2="1808" x1="1344" />
            <wire x2="1488" y1="1808" y2="1808" x1="1344" />
        </branch>
        <branch name="XLXN_246(7:0)">
            <wire x2="1984" y1="160" y2="160" x1="1760" />
            <wire x2="1984" y1="160" y2="848" x1="1984" />
            <wire x2="2224" y1="848" y2="848" x1="1984" />
        </branch>
        <branch name="XLXN_247(7:0)">
            <wire x2="2000" y1="736" y2="736" x1="1776" />
            <wire x2="2000" y1="736" y2="784" x1="2000" />
            <wire x2="2224" y1="784" y2="784" x1="2000" />
        </branch>
        <branch name="XLXN_248(7:0)">
            <wire x2="1968" y1="1264" y2="1264" x1="1776" />
            <wire x2="1968" y1="720" y2="1264" x1="1968" />
            <wire x2="2224" y1="720" y2="720" x1="1968" />
        </branch>
        <branch name="XLXN_249(7:0)">
            <wire x2="2000" y1="1808" y2="1808" x1="1776" />
            <wire x2="2000" y1="912" y2="1808" x1="2000" />
            <wire x2="2224" y1="912" y2="912" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="576" y="1088" name="clr" orien="R180" />
        <instance x="320" y="928" name="XLXI_124" orien="R0" />
        <instance x="320" y="768" name="XLXI_128" orien="R0" />
        <branch name="clr">
            <wire x2="592" y1="1088" y2="1088" x1="576" />
            <wire x2="592" y1="1088" y2="1392" x1="592" />
            <wire x2="624" y1="1392" y2="1392" x1="592" />
            <wire x2="592" y1="1392" y2="1856" x1="592" />
            <wire x2="640" y1="1856" y2="1856" x1="592" />
            <wire x2="624" y1="496" y2="496" x1="592" />
            <wire x2="592" y1="496" y2="960" x1="592" />
            <wire x2="624" y1="960" y2="960" x1="592" />
            <wire x2="592" y1="960" y2="1088" x1="592" />
        </branch>
        <branch name="XLXN_260">
            <wire x2="576" y1="736" y2="736" x1="544" />
            <wire x2="624" y1="736" y2="736" x1="576" />
            <wire x2="576" y1="736" y2="816" x1="576" />
            <wire x2="608" y1="816" y2="816" x1="576" />
            <wire x2="608" y1="816" y2="1168" x1="608" />
            <wire x2="624" y1="1168" y2="1168" x1="608" />
            <wire x2="608" y1="1168" y2="1632" x1="608" />
            <wire x2="640" y1="1632" y2="1632" x1="608" />
            <wire x2="624" y1="272" y2="272" x1="576" />
            <wire x2="576" y1="272" y2="736" x1="576" />
        </branch>
        <branch name="XLXN_263">
            <wire x2="624" y1="432" y2="432" x1="208" />
            <wire x2="208" y1="432" y2="832" x1="208" />
            <wire x2="576" y1="832" y2="832" x1="208" />
            <wire x2="576" y1="832" y2="896" x1="576" />
            <wire x2="624" y1="896" y2="896" x1="576" />
            <wire x2="208" y1="832" y2="1328" x1="208" />
            <wire x2="624" y1="1328" y2="1328" x1="208" />
            <wire x2="208" y1="1328" y2="1792" x1="208" />
            <wire x2="640" y1="1792" y2="1792" x1="208" />
            <wire x2="576" y1="896" y2="896" x1="544" />
        </branch>
        <branch name="hold">
            <wire x2="320" y1="896" y2="896" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="896" name="hold" orien="R180" />
        <branch name="direction">
            <wire x2="320" y1="736" y2="736" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="736" name="direction" orien="R180" />
        <branch name="XLXN_268">
            <wire x2="624" y1="400" y2="400" x1="32" />
            <wire x2="32" y1="400" y2="800" x1="32" />
            <wire x2="560" y1="800" y2="800" x1="32" />
            <wire x2="560" y1="800" y2="864" x1="560" />
            <wire x2="624" y1="864" y2="864" x1="560" />
            <wire x2="32" y1="800" y2="1296" x1="32" />
            <wire x2="624" y1="1296" y2="1296" x1="32" />
            <wire x2="32" y1="1296" y2="1744" x1="32" />
            <wire x2="32" y1="1744" y2="1760" x1="32" />
            <wire x2="640" y1="1760" y2="1760" x1="32" />
            <wire x2="608" y1="1744" y2="1744" x1="32" />
            <wire x2="608" y1="1744" y2="2272" x1="608" />
            <wire x2="608" y1="2272" y2="2272" x1="544" />
        </branch>
        <instance x="160" y="2304" name="XLXI_129" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="160" y1="2144" y2="2144" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="2144" name="clk" orien="R180" />
        <branch name="XLXN_270">
            <wire x2="592" y1="2144" y2="2144" x1="544" />
            <wire x2="592" y1="2144" y2="2336" x1="592" />
            <wire x2="1840" y1="2336" y2="2336" x1="592" />
            <wire x2="1840" y1="976" y2="2336" x1="1840" />
            <wire x2="2224" y1="976" y2="976" x1="1840" />
        </branch>
        <branch name="XLXN_271">
            <wire x2="624" y1="2208" y2="2208" x1="544" />
            <wire x2="624" y1="2208" y2="2320" x1="624" />
            <wire x2="1824" y1="2320" y2="2320" x1="624" />
            <wire x2="1824" y1="1040" y2="2320" x1="1824" />
            <wire x2="2224" y1="1040" y2="1040" x1="1824" />
        </branch>
        <branch name="a">
            <wire x2="2640" y1="912" y2="912" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="912" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2640" y1="848" y2="848" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="848" name="b" orien="R0" />
        <branch name="c">
            <wire x2="2640" y1="784" y2="784" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="784" name="c" orien="R0" />
        <branch name="d">
            <wire x2="2640" y1="720" y2="720" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="720" name="d" orien="R0" />
        <branch name="dp">
            <wire x2="2640" y1="976" y2="976" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="976" name="dp" orien="R0" />
        <branch name="e">
            <wire x2="2640" y1="1168" y2="1168" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1168" name="e" orien="R0" />
        <branch name="f">
            <wire x2="2640" y1="1104" y2="1104" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1104" name="f" orien="R0" />
        <branch name="g">
            <wire x2="2640" y1="1040" y2="1040" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1040" name="g" orien="R0" />
        <branch name="slct0">
            <wire x2="2640" y1="1232" y2="1232" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1232" name="slct0" orien="R0" />
        <branch name="slct1">
            <wire x2="2640" y1="1296" y2="1296" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1296" name="slct1" orien="R0" />
        <branch name="slct2">
            <wire x2="2640" y1="1360" y2="1360" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1360" name="slct2" orien="R0" />
        <branch name="slct3">
            <wire x2="2640" y1="1424" y2="1424" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1424" name="slct3" orien="R0" />
    </sheet>
</drawing>