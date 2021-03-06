v 20130925 2
C 59100 52200 1 0 0 npn-3.sym
{
T 60000 52700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 60000 52700 5 10 1 1 0 0 1
refdes=Q1
T 59100 52200 5 10 0 0 0 0 1
model-name=genericNpn
T 59100 52200 5 10 0 1 0 0 1
model=npn
}
C 59100 50700 1 0 0 npn-3.sym
{
T 60000 51200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 60000 51000 5 10 1 1 0 0 1
refdes=Q2
T 59100 50700 5 10 0 0 0 0 1
model-name=genericNpn
T 59100 50700 5 10 0 1 0 0 1
model=npn
}
N 59700 51700 59700 52300 4
N 59700 50000 59700 50700 4
C 59800 53800 1 90 0 resistor-2.sym
{
T 59450 54200 5 10 0 0 90 0 1
device=RESISTOR
T 59800 54100 5 10 1 1 0 0 1
value=5k
T 59800 54300 5 10 1 1 0 0 1
refdes=R_NAND_L
}
N 59700 53200 59700 53800 4
N 59700 54700 59700 55100 4
C 59100 49000 1 0 0 npn-3.sym
{
T 60000 49500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 60000 49300 5 10 1 1 0 0 1
refdes=Q3
T 59100 49000 5 10 0 0 0 0 1
model-name=genericNpn
T 59100 49000 5 10 0 1 0 0 1
model=npn
}
N 59700 48500 59700 49000 4
C 57600 49200 1 0 1 spice-subcircuit-IO-1.sym
{
T 56700 49600 5 10 0 1 0 6 1
device=spice-IO
T 56850 49750 5 10 1 1 180 6 1
refdes=P3
}
C 57600 50900 1 0 1 spice-subcircuit-IO-1.sym
{
T 56700 51300 5 10 0 1 0 6 1
device=spice-IO
T 56850 51450 5 10 1 1 180 6 1
refdes=P2
}
C 57600 52400 1 0 1 spice-subcircuit-IO-1.sym
{
T 56700 52800 5 10 0 1 0 6 1
device=spice-IO
T 56850 52950 5 10 1 1 180 6 1
refdes=P1
}
C 60200 53800 1 180 1 spice-subcircuit-IO-1.sym
{
T 61100 53400 5 10 0 1 180 6 1
device=spice-IO
T 60950 53250 5 10 1 1 0 6 1
refdes=P6
}
N 60400 53500 59700 53500 4
C 53900 54900 1 0 0 spice-subcircuit-LL-1.sym
{
T 54000 55200 5 10 0 1 0 0 1
device=spice-subcircuit-LL
T 54000 55300 5 10 1 1 0 0 1
refdes=A1
T 54000 55000 5 10 1 1 0 0 1
model-name=nand_gate
}
T 53500 51700 9 10 1 0 0 0 2
Check the symbols with:
gsymcheck -vv sym/nand.sym
C 51200 51900 1 0 0 nand-gate.sym
{
T 52895 54495 5 10 0 0 0 0 1
device=NAND_GATE
T 52995 54195 5 10 1 1 0 0 1
refdes=X?
T 52895 54895 5 10 0 0 0 0 1
footprint=0
T 52900 54400 5 10 1 0 0 0 1
graphical=1
}
T 55400 54000 9 10 1 0 0 0 1
Three feet NAND gate SUBCKT
C 57600 54800 1 0 1 spice-subcircuit-IO-1.sym
{
T 56700 55200 5 10 0 1 0 6 1
device=spice-IO
T 56850 55350 5 10 1 1 180 6 1
refdes=P4
}
N 59700 55100 57400 55100 4
C 57600 48200 1 0 1 spice-subcircuit-IO-1.sym
{
T 56700 48600 5 10 0 1 0 6 1
device=spice-IO
T 56850 48750 5 10 1 1 180 6 1
refdes=P5
}
N 57400 48500 59700 48500 4
C 58700 52800 1 180 0 resistor-2.sym
{
T 58300 52450 5 10 0 0 180 0 1
device=RESISTOR
T 57800 52200 5 10 1 1 0 0 1
value=10k
T 57800 52400 5 10 1 1 0 0 1
refdes=R_NAND_S_1
}
C 58700 51300 1 180 0 resistor-2.sym
{
T 58300 50950 5 10 0 0 180 0 1
device=RESISTOR
T 57800 50700 5 10 1 1 0 0 1
value=10k
T 57800 50900 5 10 1 1 0 0 1
refdes=R_NAND_S_2
}
C 58700 49600 1 180 0 resistor-2.sym
{
T 58300 49250 5 10 0 0 180 0 1
device=RESISTOR
T 57800 49000 5 10 1 1 0 0 1
value=10k
T 57800 49200 5 10 1 1 0 0 1
refdes=R_NAND_S_3
}
N 57400 52700 57800 52700 4
N 57400 51200 57800 51200 4
N 57400 49500 57800 49500 4
N 58700 49500 59100 49500 4
N 58700 51200 59100 51200 4
N 58700 52700 59100 52700 4
T 50700 50100 9 10 1 0 0 0 4
Generate the cir file with:
gnetlist -g spice-sdb -o nand.3.SUBCKT.cir nand.3.SUBCKT.sch
In order for other schematics to use it, copy the cir file here:
cp nand.3.SUBCKT.cir ../../../../subckts
