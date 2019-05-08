v 20130925 2
N 57300 49000 61900 49000 4
{
T 60600 48800 5 10 1 1 0 0 1
netname=0
}
N 61900 49000 61900 50900 4
C 61600 50900 1 0 0 vpulse-1.sym
{
T 62300 51550 5 10 1 1 0 0 1
refdes=vce
T 62300 51750 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 60900 52950 5 10 0 2 0 0 1
value=DC 10V
}
C 57600 50700 1 180 0 vdc-1.sym
{
T 57700 50150 5 10 1 1 0 0 1
refdes=ib
T 56900 49850 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 56500 50100 5 10 1 1 0 0 1
value=10mA
}
N 61900 52100 61900 54000 4
N 57300 49500 57300 49000 4
N 59900 49000 59900 52500 4
N 61900 54000 59900 54000 4
N 57300 50700 57300 51500 4
{
T 57500 50800 5 10 1 1 0 0 1
netname=b1
}
N 57300 51500 58400 51500 4
C 59800 53400 1 270 0 resistor-2.sym
{
T 60150 53000 5 10 0 0 270 0 1
device=RESISTOR
T 59400 52900 5 10 1 1 0 0 1
value=5
T 60100 52900 5 10 1 1 0 0 1
refdes=RL
}
N 59900 53400 59900 54000 4
N 59900 53500 59500 53800 4
{
T 59300 53900 5 10 1 1 0 0 1
netname=Vc
}
C 58400 51400 1 0 0 resistor-2.sym
{
T 58800 51750 5 10 0 0 0 0 1
device=RESISTOR
T 59000 51300 5 10 1 1 180 0 1
value=5000
T 58900 51800 5 10 1 1 180 0 1
refdes=R1
}
N 59300 51500 59900 51500 4
T 55300 54100 9 10 1 0 0 0 6
The usual 2D graph for a resistor is a straight line.
Here we are drawing a 3D plot with a circuit similar 
to the one used for the transistor characteristic curve.  
But... it's a simple plane!
BORING!
Hold on, this will come to use in a minute.
C 52900 54000 1 0 0 spice-directive-1.sym
{
T 53000 54300 5 10 0 1 0 0 1
device=directive
T 53000 54400 5 10 1 1 0 0 1
refdes=A1
T 52900 51700 5 10 1 1 0 0 12
value=.options savecurrents
.print DC @r1[i] @rl[i]
.control
set noaskquit
set color0=rgb:f/f/f
set color1=rgb:0/0/0
save all @r1[i] @rl[i] 
dc vce -1 10v 0.2 ib 0 50ma 1ma
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
