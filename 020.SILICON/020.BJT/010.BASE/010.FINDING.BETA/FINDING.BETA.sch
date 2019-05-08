v 20130925 2
C 58300 52200 1 0 0 gnd-1.sym
C 58200 55500 1 0 0 vcc-1.sym
N 56400 55500 58400 55500 4
C 54300 55200 1 0 0 vcc-1.sym
C 54400 54000 1 0 0 gnd-1.sym
C 54300 55200 1 270 0 voltage-3.sym
{
T 55000 55000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 54800 54800 5 10 1 1 0 0 1
refdes=V1
T 54800 54600 5 10 1 1 0 0 1
value=DC 5V
}
C 57800 52900 1 0 0 npn-3.sym
{
T 58700 53400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58700 53400 5 10 0 1 0 0 1
refdes=Q1
T 57800 52900 5 10 0 0 0 0 1
model-name=genericNpn
T 57800 52900 5 10 0 1 0 0 1
model=npn
T 55100 52000 5 10 1 1 0 0 1
comment=Hint: try setting model to "npn (bf=200)"
}
N 58400 52900 58400 52500 4
C 56500 54100 1 90 0 resistor-2.sym
{
T 56150 54500 5 10 0 0 90 0 1
device=RESISTOR
T 56500 54400 5 10 1 1 0 0 1
value=1000
T 56000 54400 5 10 1 1 0 0 1
refdes=Rb
}
N 56400 55000 56400 55500 4
N 56400 53400 56400 54100 4
N 56400 53400 57800 53400 4
N 58400 53900 58400 55500 4
T 52300 52300 9 10 1 0 0 0 7
Currents:
@q1[ic] = 4.070378e-01
@q1[ib] = 4.070378e-03

BETA: 
@q1[ic]/@q1[ib] = 1.000000e+02

T 54700 56100 9 10 1 0 0 0 9
This is a crude way to obtain the beta of a transistor.
Actually the circuit does nothing; some current flows
through it, then the ratio between the Ib and Ic is calculated.  
This is only because I couldn't find a way to make ngspice
spit the @q1[bf] that is supposed to be the beta parameter
in the model.  
Anyway, despite my ignorance, I got something using 
the ratio of @q1[ic] (collector current) and 
@q1[ib] (base current).
T 59100 54800 9 10 1 0 0 0 2
Note the absence of a load on
the  collector.
C 59400 53500 1 0 0 spice-directive-1.sym
{
T 59500 53800 5 10 0 1 0 0 1
device=directive
T 59500 53900 5 10 1 1 0 0 1
refdes=A1
T 59400 50900 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @q1[ic] @q1[ib]
set noaskquit
op
echo "Currents:"
print @q1[ic] @q1[ib]
echo "BETA: "
print @q1[ic]/@q1[ib] 
echo ""
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
