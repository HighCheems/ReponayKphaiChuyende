# File saved with Nlview 7.0r4  2019-12-20 bk=1.5203 VDI=41 GEI=36 GUI=JA:10.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new RGB_to_Gray work:RGB_to_Gray:NOFILE -nosplit
load symbol Controller work:Controller:NOFILE HIERBOX pin CLK input.left pin In_Valid input.left pin Out_Valid output.right pin stage0 output.right pin stage1 output.right pin stage2 output.right pin stage3 output.right pin stage4 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol Datapath work:Datapath:NOFILE HIERBOX pin CLK input.left pin stage0 input.left pin stage1 input.left pin stage2 input.left pin stage3 input.left pin stage4 input.left pinBus B input.left [7:0] pinBus G input.left [7:0] pinBus Gray output.right [7:0] pinBus R input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load port CLK input -pg 1 -lvl 0 -x 0 -y 140
load port In_Valid input -pg 1 -lvl 0 -x 0 -y 240
load port Out_Valid output -pg 1 -lvl 3 -x 590 -y 20
load portBus B input [7:0] -attr @name B[7:0] -pg 1 -lvl 0 -x 0 -y 60
load portBus G input [7:0] -attr @name G[7:0] -pg 1 -lvl 0 -x 0 -y 80
load portBus Gray output [7:0] -attr @name Gray[7:0] -pg 1 -lvl 3 -x 590 -y 160
load portBus R input [7:0] -attr @name R[7:0] -pg 1 -lvl 0 -x 0 -y 120
load inst Ctl Controller work:Controller:NOFILE -autohide -attr @cell(#000000) Controller -pg 1 -lvl 1 -x 100 -y 170
load inst Dtp Datapath work:Datapath:NOFILE -autohide -attr @cell(#000000) Datapath -pinBusAttr B @name B[7:0] -pinBusAttr G @name G[7:0] -pinBusAttr Gray @name Gray[7:0] -pinBusAttr R @name R[7:0] -pg 1 -lvl 2 -x 440 -y 70
load net B[0] -attr @rip B[0] -port B[0] -pin Dtp B[0]
load net B[1] -attr @rip B[1] -port B[1] -pin Dtp B[1]
load net B[2] -attr @rip B[2] -port B[2] -pin Dtp B[2]
load net B[3] -attr @rip B[3] -port B[3] -pin Dtp B[3]
load net B[4] -attr @rip B[4] -port B[4] -pin Dtp B[4]
load net B[5] -attr @rip B[5] -port B[5] -pin Dtp B[5]
load net B[6] -attr @rip B[6] -port B[6] -pin Dtp B[6]
load net B[7] -attr @rip B[7] -port B[7] -pin Dtp B[7]
load net CLK -port CLK -pin Ctl CLK -pin Dtp CLK
netloc CLK 1 0 2 20 100 N
load net G[0] -attr @rip G[0] -pin Dtp G[0] -port G[0]
load net G[1] -attr @rip G[1] -pin Dtp G[1] -port G[1]
load net G[2] -attr @rip G[2] -pin Dtp G[2] -port G[2]
load net G[3] -attr @rip G[3] -pin Dtp G[3] -port G[3]
load net G[4] -attr @rip G[4] -pin Dtp G[4] -port G[4]
load net G[5] -attr @rip G[5] -pin Dtp G[5] -port G[5]
load net G[6] -attr @rip G[6] -pin Dtp G[6] -port G[6]
load net G[7] -attr @rip G[7] -pin Dtp G[7] -port G[7]
load net Gray[0] -attr @rip Gray[0] -pin Dtp Gray[0] -port Gray[0]
load net Gray[1] -attr @rip Gray[1] -pin Dtp Gray[1] -port Gray[1]
load net Gray[2] -attr @rip Gray[2] -pin Dtp Gray[2] -port Gray[2]
load net Gray[3] -attr @rip Gray[3] -pin Dtp Gray[3] -port Gray[3]
load net Gray[4] -attr @rip Gray[4] -pin Dtp Gray[4] -port Gray[4]
load net Gray[5] -attr @rip Gray[5] -pin Dtp Gray[5] -port Gray[5]
load net Gray[6] -attr @rip Gray[6] -pin Dtp Gray[6] -port Gray[6]
load net Gray[7] -attr @rip Gray[7] -pin Dtp Gray[7] -port Gray[7]
load net In_Valid -pin Ctl In_Valid -port In_Valid
netloc In_Valid 1 0 1 NJ 240
load net Out_Valid -pin Ctl Out_Valid -port Out_Valid
netloc Out_Valid 1 1 2 260J 20 NJ
load net R[0] -attr @rip R[0] -pin Dtp R[0] -port R[0]
load net R[1] -attr @rip R[1] -pin Dtp R[1] -port R[1]
load net R[2] -attr @rip R[2] -pin Dtp R[2] -port R[2]
load net R[3] -attr @rip R[3] -pin Dtp R[3] -port R[3]
load net R[4] -attr @rip R[4] -pin Dtp R[4] -port R[4]
load net R[5] -attr @rip R[5] -pin Dtp R[5] -port R[5]
load net R[6] -attr @rip R[6] -pin Dtp R[6] -port R[6]
load net R[7] -attr @rip R[7] -pin Dtp R[7] -port R[7]
load net stage0 -pin Ctl stage0 -pin Dtp stage0
netloc stage0 1 1 1 280 160n
load net stage1 -pin Ctl stage1 -pin Dtp stage1
netloc stage1 1 1 1 300 180n
load net stage2 -pin Ctl stage2 -pin Dtp stage2
netloc stage2 1 1 1 320 200n
load net stage3 -pin Ctl stage3 -pin Dtp stage3
netloc stage3 1 1 1 340 220n
load net stage4 -pin Ctl stage4 -pin Dtp stage4
netloc stage4 1 1 1 360 240n
load netBundle @B 8 B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 2 NJ 60 320J
load netBundle @G 8 G[7] G[6] G[5] G[4] G[3] G[2] G[1] G[0] -autobundled
netbloc @G 1 0 2 NJ 80 300J
load netBundle @R 8 R[7] R[6] R[5] R[4] R[3] R[2] R[1] R[0] -autobundled
netbloc @R 1 0 2 NJ 120 280J
load netBundle @Gray 8 Gray[7] Gray[6] Gray[5] Gray[4] Gray[3] Gray[2] Gray[1] Gray[0] -autobundled
netbloc @Gray 1 2 1 NJ 160
levelinfo -pg 1 0 100 440 590
pagesize -pg 1 -db -bbox -sgen -110 0 710 320
show
fullfit
#
# initialize ictrl to current module RGB_to_Gray work:RGB_to_Gray:NOFILE
ictrl init topinfo |
