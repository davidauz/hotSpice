v 20130925 2
C 78200 41700 1 270 0 resistor-2.sym
{
T 78550 41300 5 10 0 0 270 0 1
device=RESISTOR
T 78800 41100 5 10 1 1 180 0 1
refdes=RL1
T 78900 41300 5 10 1 1 180 0 1
value=2000
}
N 78300 41700 78300 42100 4
C 81200 39400 1 0 0 npn-3.sym
{
T 82100 39900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 81200 39400 5 10 0 0 0 0 1
model-name=2N5551
T 81200 39400 5 10 0 0 0 0 1
model=npn
T 81700 39800 5 10 1 1 0 0 1
refdes=Q2
}
C 81700 41700 1 270 0 resistor-2.sym
{
T 82050 41300 5 10 0 0 270 0 1
device=RESISTOR
T 81900 41300 5 10 1 1 0 0 1
refdes=RC
T 81900 41100 5 10 1 1 0 0 1
value=120
}
N 78300 42100 84500 42100 4
N 81800 38100 81800 39400 4
N 81800 40400 81800 40800 4
N 81800 36900 81800 37200 4
C 81700 38100 1 270 0 resistor-2.sym
{
T 82050 37700 5 10 0 0 270 0 1
device=RESISTOR
T 81900 37700 5 10 1 1 0 0 1
refdes=RE
T 81900 37500 5 10 1 1 0 0 1
value=80
}
C 79000 39800 1 0 0 resistor-2.sym
{
T 79400 40150 5 10 0 0 0 0 1
device=RESISTOR
T 79300 39600 5 10 1 1 0 0 1
refdes=R1
T 79700 40200 5 10 1 1 180 0 1
value=2000
}
N 79900 39900 81200 39900 4
C 80000 38100 1 270 0 resistor-2.sym
{
T 80350 37700 5 10 0 0 270 0 1
device=RESISTOR
T 80200 37700 5 10 1 1 0 0 1
refdes=R2
T 80200 37500 5 10 1 1 0 0 1
value=6000
}
N 77600 36900 84500 36900 4
N 80100 37200 80100 36900 4
N 78300 39600 78300 40800 4
C 77700 38600 1 0 0 npn-3.sym
{
T 78600 39100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 77700 38600 5 10 0 0 0 0 1
model-name=2N5551
T 77700 38600 5 10 0 0 0 0 1
model=npn
T 78600 39100 5 10 1 1 0 0 1
refdes=Q1
}
N 78300 38600 78300 38400 4
N 78300 38400 81800 38400 4
N 80100 38100 80100 38200 4
N 80100 38200 80200 38300 4
N 80200 38300 80200 38500 4
N 80200 38500 80100 38600 4
N 80100 38600 80100 39900 4
N 81800 41700 81800 42100 4
N 78300 39900 79000 39900 4
C 79800 42500 1 0 1 spice-subcircuit-IO-1.sym
{
T 78900 42900 5 10 0 1 0 6 1
device=spice-IO
T 79050 43050 5 10 1 1 180 6 1
refdes=P3
}
C 80200 35800 1 0 1 spice-subcircuit-IO-1.sym
{
T 79300 36200 5 10 0 1 0 6 1
device=spice-IO
T 79450 36350 5 10 1 1 180 6 1
refdes=P4
}
C 77600 38800 1 0 1 spice-subcircuit-IO-1.sym
{
T 76700 39200 5 10 0 1 0 6 1
device=spice-IO
T 76850 39350 5 10 1 1 180 6 1
refdes=P1
}
N 83000 40600 81800 40600 4
N 79600 42800 79800 42800 4
N 79800 42800 79800 42100 4
N 77400 39100 77700 39100 4
N 80000 36100 81200 36100 4
N 81200 36100 81200 36900 4
C 73500 42600 1 0 0 spice-subcircuit-LL-1.sym
{
T 73600 42900 5 10 0 1 0 0 1
device=spice-subcircuit-LL
T 73600 43000 5 10 1 1 0 0 1
refdes=A1
T 73600 42700 5 10 1 1 0 0 1
model-name=schmitt_trigger_inv
}
C 77700 38000 1 90 0 resistor-2.sym
{
T 77350 38400 5 10 0 0 90 0 1
device=RESISTOR
T 78000 38600 5 10 1 1 180 0 1
refdes=R3
T 77100 38500 5 10 1 1 0 0 1
value=10k
}
N 77600 36900 77600 38000 4
N 77600 38900 77600 39100 4
C 85100 39800 1 180 1 spice-subcircuit-IO-1.sym
{
T 86000 39400 5 10 0 1 180 6 1
device=spice-IO
T 85850 39250 5 10 1 1 0 6 1
refdes=P2
}
C 82900 40000 1 270 0 resistor-2.sym
{
T 83250 39600 5 10 0 0 270 0 1
device=RESISTOR
T 82500 39500 5 10 1 1 0 0 1
value=2000
T 83200 39500 5 10 1 1 0 0 1
refdes=Rd1
}
C 82900 38800 1 270 0 resistor-2.sym
{
T 83250 38400 5 10 0 0 270 0 1
device=RESISTOR
T 82500 38300 5 10 1 1 0 0 1
value=400
T 83200 38300 5 10 1 1 0 0 1
refdes=Rd2
}
N 83000 40000 83000 40600 4
N 83000 39100 83000 38800 4
N 83000 36900 83000 37900 4
C 83900 38400 1 0 0 npn-3.sym
{
T 84800 38900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 83900 38400 5 10 0 0 0 0 1
model-name=2N5551
T 83900 38400 5 10 0 0 0 0 1
model=npn
T 84400 38800 5 10 1 1 0 0 1
refdes=Q3
}
C 84400 40600 1 270 0 resistor-2.sym
{
T 84750 40200 5 10 0 0 270 0 1
device=RESISTOR
T 85000 40000 5 10 1 1 180 0 1
refdes=Rd3
T 85100 40200 5 10 1 1 180 0 1
value=2000
}
N 83900 38900 83000 38900 4
N 84500 39400 84500 39700 4
N 84500 39500 85300 39500 4
N 84500 40600 84500 42100 4
N 84500 38400 84500 36900 4
C 73100 40000 1 0 0 schmitt-trigger-inv.sym
{
T 73900 40800 5 10 1 1 0 0 1
refdes=X?
T 73340 41372 5 10 0 0 0 0 1
symversion=1.0
T 73095 39795 5 10 1 0 0 0 1
device=schmitt_trigger_inv
T 73100 39600 5 10 1 0 0 0 1
graphical=1
}
T 79200 43600 9 10 1 0 0 0 3
The digital output inverting Schmitt trigger can be
useful in a number of situations, so here is a handy
SUBCKT.
C 73500 41900 1 0 0 spice-include-1.sym
{
T 73600 42200 5 10 0 1 0 0 1
device=include
T 73600 42300 5 10 1 1 0 0 1
refdes=A2
T 74000 42000 5 10 1 1 0 0 1
file=../../../models/2N5551.mod
}
