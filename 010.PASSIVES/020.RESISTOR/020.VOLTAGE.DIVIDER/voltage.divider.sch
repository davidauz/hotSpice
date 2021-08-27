v 20130925 2
C 40500 77000 1 270 0 voltage-3.sym
{
T 41200 76800 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 40400 76800 5 10 1 1 0 0 1
refdes=V2
T 40400 76100 5 10 1 1 0 0 1
value=DC 10V
}
C 42900 77900 1 270 0 resistor-2.sym
{
T 43250 77500 5 10 0 0 270 0 1
device=RESISTOR
T 43200 77400 5 10 1 1 0 0 1
refdes=R1
T 42500 77400 5 10 1 1 0 0 1
value=2500
}
C 42900 76100 1 270 0 resistor-2.sym
{
T 43250 75700 5 10 0 0 270 0 1
device=RESISTOR
T 43200 75600 5 10 1 1 0 0 1
refdes=R2
T 42500 75600 5 10 1 1 0 0 1
value=1500
}
N 40700 77000 40700 78200 4
N 40700 78200 43000 78200 4
N 43000 78200 43000 77900 4
N 43000 77000 43000 76100 4
N 40700 76100 40700 74500 4
N 40700 74500 43000 74500 4
N 43000 74500 43000 75200 4
N 43000 78200 43500 78500 4
{
T 43600 78600 5 10 1 1 0 0 1
netname=vIn
}
N 43000 76500 43500 76800 4
{
T 43600 76900 5 10 1 1 0 0 1
netname=vOut
}
C 41700 74200 1 0 0 gnd-1.sym
{
T 41700 74200 5 10 0 0 0 0 1
netname=0
}
T 44800 76900 9 10 1 0 0 0 17
Each of the resistors has a voltage drop as Mr. Ohm found out:

	V=RI

From the current point of view it is like there is only one resistor
whose value is the sum of the resistors in series:

	Rtot=R1+R2=2500+1500=4000

So the current is I=V/Rtot = 10/4000=2.5mA
The voltage in vOut is then

	Vdrop2=R2*I=1500*0.0025=3.75 V

The canonical formula is 

	Vout=Vin*R2/(R1+R2)=10*1500/(1500+2500)=3.75
C 43800 74000 1 0 0 spice-directive-1.sym
{
T 43900 74300 5 10 0 1 0 0 1
device=directive
T 43900 74400 5 10 1 1 0 0 1
refdes=A1
T 43800 72700 5 10 1 1 0 0 7
value=.control
op
print vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 47400 74100 9 10 1 0 0 0 11
To run the simulation:

gnetlist -g spice-sdb -o net.net voltage.divider.sch                                                                                                                                                                
ngspice net.net 

Hint
try these commands at the prompt:

	alter r1 2000
	op
	print vin vout
T 40000 79300 9 20 1 0 0 0 1
Voltage divider
