v 20130925 2
C 56000 54400 1 0 1 npn-3.sym
{
T 55100 54900 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 56000 54400 5 10 0 1 0 6 1
model-name=genericNPN
T 56000 54400 5 10 0 0 0 6 1
model=npn
T 55500 54800 5 10 1 1 0 6 1
refdes=Q3d
}
C 55200 57300 1 0 0 vcc-1.sym
N 55400 54200 55400 54400 4
C 55500 57100 1 90 1 resistor-2.sym
{
T 55150 56700 5 10 0 0 90 6 1
device=RESISTOR
T 55600 56700 5 10 1 1 180 6 1
value=5k
T 55600 56500 5 10 1 1 180 6 1
refdes=Rmd
}
N 55400 57100 55400 57300 4
N 55400 55400 55400 56200 4
N 56000 54900 56300 54900 4
N 56300 54900 56300 55600 4
C 55300 53900 1 0 0 gnd-1.sym
{
T 55200 53900 5 10 1 1 0 0 1
netname=0
}
N 57200 55600 55400 55600 4
C 57200 55100 1 0 0 npn-3.sym
{
T 58100 55600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57200 55100 5 10 0 1 0 0 1
model-name=genericNPN
T 57200 55100 5 10 0 0 0 0 1
model=npn
T 57700 55500 5 10 1 1 0 0 1
refdes=Q4d
}
