v 20130925 2
C 40900 78000 1 270 0 voltage-3.sym
{
T 41600 77800 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 40800 77800 5 10 1 1 0 0 1
refdes=V2
T 40800 77100 5 10 1 1 0 0 1
value=DC 10V
}
C 42800 77800 1 270 0 resistor-2.sym
{
T 43150 77400 5 10 0 0 270 0 1
device=RESISTOR
T 43100 77300 5 10 1 1 0 0 1
refdes=R1
T 42400 77300 5 10 1 1 0 0 1
value=25
}
N 41100 78000 41100 78600 4
N 41100 78600 44700 78600 4
N 42900 78600 42900 77800 4
N 41100 77100 41100 76300 4
N 41100 76300 44700 76300 4
N 42900 76300 42900 76900 4
C 42100 76000 1 0 0 gnd-1.sym
{
T 42300 75900 5 10 1 1 0 0 1
netname=0
}
C 44600 77800 1 270 0 resistor-2.sym
{
T 44950 77400 5 10 0 0 270 0 1
device=RESISTOR
T 44900 77300 5 10 1 1 0 0 1
refdes=R2
T 44200 77300 5 10 1 1 0 0 1
value=15
}
N 44700 77800 44700 78600 4
N 44700 76900 44700 76300 4
T 38800 73400 9 10 1 0 0 0 11
This example is not very exciting; no fancy plots, there are only some ugly 
numbers in the terminal:
 
@r1[i] = 4.000000e-01
@r2[i] = 6.666667e-01

Those are the values of the current flowing through the two 
resistors as calculated by ngspice.
Here is the formula if you want to try your hand:

	In = Itot * Rtot / Rn
T 46900 73700 9 10 1 0 0 0 18
This is the ngspice control file.
Here is a breakdown of the lines.

.options savecurrents	tells the simulator to keep track of currents
.control		start of comands
save		which are the values to save for later viewing or plotting
op			the analysis beig run is "op", meaning "Operating Point"
print		outputs values
			@r2[i] means "Current flowing through r2"
echo		print a string
.endc		end of commands







T 38700 79300 9 10 1 0 0 0 8
This is the first schematics seen when starting from the top.

Tipically every RUNME script lanches a gschem in background and
 then ngspice is used for the simulation and plots.
Occasionaly there is a bit of cooking up the data and some gnuplot too.

When you are done you can close gschem (Alt+F4) and exit 
ngspice (Ctrl+D or 'exit' in the terminal.)
C 45600 80100 1 0 0 spice-directive-1.sym
{
T 45700 80400 5 10 0 1 0 0 1
device=directive
T 45700 80500 5 10 1 1 0 0 1
refdes=A1
T 45600 78500 5 10 1 1 0 0 9
value=.options savecurrents
.control
save all @r1[i] @r2[i]
op
print @r1[i] @r2[i]
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
L 47700 77400 46800 78500 3 0 0 0 -1 -1
L 46800 78500 46900 78500 3 0 0 0 -1 -1
L 46800 78500 46800 78400 3 0 0 0 -1 -1
T 45700 73400 9 10 1 0 0 0 5
hint: at the ngspice prompt, try this:

	alter r1 15
	op
	print @r1[i] @r2[i]
T 43400 81800 9 20 1 0 0 0 1
Current divider
