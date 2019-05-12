v 20130925 2
C 58500 54300 1 270 0 resistor-2.sym
{
T 58850 53900 5 10 0 0 270 0 1
device=RESISTOR
T 59100 53700 5 10 1 1 180 0 1
refdes=RL1
T 59200 53900 5 10 1 1 180 0 1
value=2000
}
N 58600 54300 58600 54600 4
C 62100 52400 1 0 0 npn-3.sym
{
T 63000 52900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 62100 52400 5 10 0 0 0 0 1
model-name=generic
T 62100 52400 5 10 0 0 0 0 1
model=npn
T 62600 52800 5 10 1 1 0 0 1
refdes=Q2
}
C 62600 54600 1 270 0 resistor-2.sym
{
T 62950 54200 5 10 0 0 270 0 1
device=RESISTOR
T 62800 54200 5 10 1 1 0 0 1
refdes=RC
T 62800 54000 5 10 1 1 0 0 1
value=120
}
N 57500 54600 62700 54600 4
N 62700 52000 62700 52400 4
N 62700 53400 62700 53700 4
N 62700 53700 63200 54000 4
{
T 63600 54000 5 10 1 1 0 6 1
netname=Vc
}
N 61900 52900 61800 53500 4
{
T 61600 53600 5 10 1 1 0 0 1
netname=Vb
}
N 62700 50800 62700 51100 4
C 62600 52000 1 270 0 resistor-2.sym
{
T 62950 51600 5 10 0 0 270 0 1
device=RESISTOR
T 62800 51600 5 10 1 1 0 0 1
refdes=RE
T 62800 51400 5 10 1 1 0 0 1
value=80
}
C 59500 52800 1 0 0 resistor-2.sym
{
T 59900 53150 5 10 0 0 0 0 1
device=RESISTOR
T 59900 52600 5 10 1 1 0 0 1
refdes=R1
T 60200 53200 5 10 1 1 180 0 1
value=2000
}
N 59500 52900 58600 52900 4
N 60400 52900 62100 52900 4
C 60900 52000 1 270 0 resistor-2.sym
{
T 61250 51600 5 10 0 0 270 0 1
device=RESISTOR
T 61100 51600 5 10 1 1 0 0 1
refdes=R2
T 61100 51400 5 10 1 1 0 0 1
value=6000
}
N 61000 52000 61000 52900 4
N 62700 52300 63300 52400 4
{
T 63600 52300 5 10 1 1 0 6 1
netname=Ve
}
C 57300 52800 1 270 0 voltage-3.sym
{
T 58000 52600 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 57800 52400 5 10 1 1 0 0 1
refdes=V1
T 57800 52200 5 10 1 1 0 0 1
value=DC 10V
}
N 57500 52800 57500 54600 4
N 57500 50800 62700 50800 4
N 57500 50800 57500 51900 4
N 61000 51100 61000 50800 4
N 58600 53400 58600 52900 4
N 58900 52900 59500 53600 4
{
T 59400 53600 5 10 1 1 0 0 1
netname=Vm
}
C 59300 50500 1 0 0 gnd-1.sym
{
T 59200 50500 5 10 1 1 0 0 1
netname=0
}
T 56900 47100 9 10 1 0 0 0 13
Now for RE

    Ve = 50mA*RE
    4=0.05*RE
    RE=4/0.05=80

from [1]:

     10*RE/(RC+RE)=4
     10*80/(RC+80)=4
     800=4(RC+80)
     200=RC+80
     RC=120
T 59300 47300 9 10 1 0 0 0 12
As a further token of oversimplification,
let's say that R1 must be 50 times bigger
than RC, because the gain is 100 and I
want it to be in saturation.

R2 should be the same because this is 
a voltage divider and 5 is half than 10.

After a quick run on the simulator,
turns out that the BJT is NOT in saturation,
so I made the R1 box smaller and voilà!
The bugger is saturated.
T 63900 46600 9 10 1 0 0 0 27
Here are the values from the op analysis:

BJT:
@q2[ic] = 4.869612e-02
@q2[ib] = 4.960964e-04
@q2[ie] = -4.91922e-02

R:
@rl1[i] = 1.297616e-03
@r1[i] = 1.297616e-03
@r2[i] = 8.015896e-04
@r2[i] = 8.015896e-04
@re[i] = 4.918528e-02

VOLTAGES:
vc = 4.157290e+00
vb = 4.809538e+00
ve = 3.934822e+00
vm = 7.404769e+00

Is it in saturation?
VB > VE?  VB > VC?
vb-ve = 8.747157e-01
vb-vc = 6.522479e-01
Vce(Sat)
vc-ve = 2.224678e-01

T 53300 47000 9 10 1 0 0 0 40
This is the rightmost half of a Schmitt trigger.
To make things easy, this first step just aims
to ensure that the BJT is in a saturated state 
with a given Ve voltage, that's all.

At this stage I am considering RL1 and R1
(inside the R1 box) as one single resistor
called R1.

Another approximation is that 
R1 and R2 are a voltage divider, and
RC and RE are another.

The transistor has to be saturated:

      Vb=Vcc(R2/(R1+R2))

I assume that the base current is
negligible:

       Ve = Vcc(Re/(RC+RE))

In this circuit I aim for Ve =4V, so:

[1]   10*RE(RC+RE)=4 

I want Vb>Ve and Vb>Vc to be
sure that the bugger is saturated, 
and I decide arbitrarily that 

      Vb=5

so 

       10(R2/(R1+R2))=5

Then another arbitrary decision: I 
want 50mA in the collector and thus
in the base way more than 0.5mA
for saturation reasons.
B 58300 52500 2200 1900 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 59500 54200 9 10 1 0 0 0 1
R1 box
C 64500 54500 1 0 0 spice-directive-1.sym
{
T 64600 54800 5 10 0 1 0 0 1
device=directive
T 64600 54900 5 10 1 1 0 0 1
refdes=A1
T 64500 52400 5 10 1 1 0 0 12
value=.options savecurrents
.control
save all @q2[ic] @q2[ib] @q2[ie] @rl1[i] @r1[i] @r2[i] @r2[i] @re[i]
op
print @q2[ic] @q2[ib] @q2[ie] 
print @rl1[i] @r1[i] @r2[i] @r2[i] @re[i]
print vc vb ve vm
echo "VB > VE?  VB > VC?"
print vb-ve vb-vc
echo "Vce(Sat)"
print vc-ve
.endc
}
T 57000 56200 9 20 1 0 0 0 1
building the Schmitt trigger: step 1
