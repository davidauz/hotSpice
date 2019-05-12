v 20130925 2
C 54300 56300 1 270 0 resistor-2.sym
{
T 54650 55900 5 10 0 0 270 0 1
device=RESISTOR
T 54900 55700 5 10 1 1 180 0 1
refdes=RL1
T 55000 55900 5 10 1 1 180 0 1
value=2000
}
N 54400 56300 54400 56600 4
C 57900 53500 1 0 0 npn-3.sym
{
T 58800 54000 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57900 53500 5 10 0 0 0 0 1
model-name=generic
T 57900 53500 5 10 0 0 0 0 1
model=npn
T 58400 53900 5 10 1 1 0 0 1
refdes=Q2
}
C 58400 55800 1 270 0 resistor-2.sym
{
T 58750 55400 5 10 0 0 270 0 1
device=RESISTOR
T 58600 55400 5 10 1 1 0 0 1
refdes=RC
T 58600 55200 5 10 1 1 0 0 1
value=120
}
N 54400 56600 60900 56600 4
N 58500 52200 58500 53500 4
N 58500 54500 58500 54900 4
N 58500 54900 59100 55200 4
{
T 59400 55200 5 10 1 1 0 6 1
netname=Vc
}
N 57700 54000 57600 54600 4
{
T 57400 54700 5 10 1 1 0 0 1
netname=Vb2
}
N 58500 51000 58500 51300 4
C 58400 52200 1 270 0 resistor-2.sym
{
T 58750 51800 5 10 0 0 270 0 1
device=RESISTOR
T 58600 51800 5 10 1 1 0 0 1
refdes=RE
T 58600 51600 5 10 1 1 0 0 1
value=80
}
C 55300 53900 1 0 0 resistor-2.sym
{
T 55700 54250 5 10 0 0 0 0 1
device=RESISTOR
T 55600 53700 5 10 1 1 0 0 1
refdes=R1
T 56000 54300 5 10 1 1 180 0 1
value=2000
}
N 54400 54000 55300 54000 4
N 56200 54000 57900 54000 4
C 56700 52200 1 270 0 resistor-2.sym
{
T 57050 51800 5 10 0 0 270 0 1
device=RESISTOR
T 56900 51800 5 10 1 1 0 0 1
refdes=R2
T 56900 51600 5 10 1 1 0 0 1
value=6000
}
N 58500 52500 59100 52600 4
{
T 59400 52500 5 10 1 1 0 6 1
netname=Ve
}
N 53200 51000 60900 51000 4
N 56800 51300 56800 51000 4
N 54400 53700 54400 55400 4
N 54400 54000 55200 54700 4
{
T 55200 54700 5 10 1 1 0 0 1
netname=Vm
}
C 53800 52700 1 0 0 npn-3.sym
{
T 54700 53200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 53800 52700 5 10 0 0 0 0 1
model-name=generic
T 53800 52700 5 10 0 0 0 0 1
model=npn
T 54700 53200 5 10 1 1 0 0 1
refdes=Q1
}
C 60700 53300 1 270 0 voltage-3.sym
{
T 61400 53100 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 61200 52900 5 10 1 1 0 0 1
refdes=V1
T 61200 52700 5 10 1 1 0 0 1
value=DC 10V
}
N 60900 53300 60900 56600 4
N 60900 52400 60900 51000 4
N 54400 52700 54400 52500 4
N 54400 52500 58500 52500 4
N 56800 52200 56800 52300 4
N 56800 52300 56900 52400 4
N 56900 52400 56900 52600 4
N 56900 52600 56800 52700 4
N 56800 52700 56800 54000 4
N 58500 55800 58500 56600 4
C 57800 50700 1 0 0 gnd-1.sym
{
T 57700 50700 5 10 1 1 0 0 1
netname=0
}
C 53000 52900 1 270 0 voltage-3.sym
{
T 53700 52700 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 53500 52500 5 10 1 1 0 0 1
refdes=V2
T 53500 52300 5 10 1 1 0 0 1
value=DC 6V
}
N 53200 52900 53200 53200 4
N 53200 53200 53800 53200 4
N 53200 52000 53200 51000 4
N 53200 53200 53100 53800 4
{
T 52900 53900 5 10 1 1 0 0 1
netname=Vb1
}
T 65700 50200 9 10 1 0 0 0 33
results:

Q2
@q2[ic] = 6.160414e-12
@q2[ib] = -7.42196e-12
@q2[ie] = -8.73845e-12
Q1
@q1[ic] = 1.992461e-03
@q1[ib] = 6.196719e-02
@q1[ie] = -6.39597e-02
R
@rl1[i] = 2.440210e-03
@r1[i] = 6.399476e-04
@r2[i] = 6.399476e-04
@rc[i] = 1.616042e-11
@re[i] = 6.376540e-02
VOLTAGES
vb1 = 6.000000e+00
vm = 5.119581e+00
vb2 = 3.839686e+00
vc = 1.000000e+01
ve = 5.101232e+00
Q2 VB > VE?  VB > VC?
vb2-ve = -1.26155e+00
vb2-vc = -6.16031e+00
Q2 Vce(Sat)
vc-ve = 4.898768e+00
Q1 VB > VE?  VB > VC?
vb1-vm = 8.804192e-01
vb1-ve = 8.987677e-01
Q1 Vce(Sat)
vm-ve = 1.834851e-02

T 52300 57100 9 10 1 0 0 0 2
This is just like step 1, plus Q1 that is a copy of Q2.
The voltage source V2 is set to 6V as a test just to see if a voltage bigger than Ve can put Q1 in saturation.
C 61500 57800 1 0 0 spice-directive-1.sym
{
T 61600 58100 5 10 0 1 0 0 1
device=directive
T 61600 58200 5 10 1 1 0 0 1
refdes=A1
T 61500 53800 5 10 1 1 0 0 21
value=.options savecurrents
.control
save all @q2[ic] @q2[ib] @q2[ie] @q1[ic] @q1[ib] @q1[ie] @rl1[i] @r1[i] @r2[i] @rc[i] @re[i]
op
echo "Q2"
print @q2[ic] @q2[ib] @q2[ie] 
echo "Q1"
print @q1[ic] @q1[ib] @q1[ie]
echo "R"
print @rl1[i] @r1[i] @r2[i] @rc[i] @re[i]
echo "VOLTAGES"
print vb1 vm vb2 vc ve
echo "Q2 VB > VE?  VB > VC?"
print vb2-ve vb2-vc
echo "Q2 Vce(Sat)"
print vc-ve
echo "Q1 VB > VE?  VB > VC?"
print vb1-vm vb1-ve
echo "Q1 Vce(Sat)"
print vm-ve
.endc
}
T 54800 58800 9 20 1 0 0 0 1
building the Schmitt trigger: step 2
