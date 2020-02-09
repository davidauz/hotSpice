v 20130925 2
T 30400 69400 9 10 1 0 0 0 3
The electrical part of a DC motor can be approxed with an inductor, a resistor and a voltage source in series.
These stand respectively for the coil inductance, coil resistance, and back EMF.
Hre we try simulating a DC motor and show some pretty pictures.
T 31000 61500 9 10 1 0 0 0 6
The back EMF Voltage Source is dependant on the speed of the motor and the torque constant KT.
The mechanical system on the right is there to calculate the speed of the motor.
The reasoning is that rotor torque in a DC motor is determined by the current through the coils
and the torque constant KT.
Torque is a mechanical entity, here represented as the voltage V_torque.
The resulting speed of the rotor is represented by the current in the mechanical circuit.
C 32800 67000 1 270 0 inductor-1.sym
{
T 33300 66800 5 10 0 0 270 0 1
device=INDUCTOR
T 33500 66800 5 10 0 0 270 0 1
symversion=0.1
T 32800 66800 5 10 1 1 180 0 1
refdes=L_Coil_Inductance
T 32200 66300 5 10 1 1 0 0 1
value=0.0015
}
C 32700 68100 1 0 0 vcc-1.sym
{
T 32800 68500 5 10 0 1 0 0 1
netname=vcc
}
C 32800 63200 1 0 0 gnd-1.sym
{
T 32700 63200 5 10 1 1 0 0 1
netname=0
}
C 32800 66100 1 270 0 resistor-2.sym
{
T 33150 65700 5 10 0 0 270 0 1
device=RESISTOR
T 32700 65700 5 10 1 1 180 0 1
value=0.5
T 31300 65800 5 10 1 1 0 0 1
refdes=R_coil_resistance
}
C 35300 63800 1 0 1 ccvs-1.sym
{
T 35100 64850 5 10 0 0 0 6 1
device=SPICE-ccvs
T 35100 65050 5 10 0 0 0 6 1
symversion=0.1
T 35000 64650 5 10 1 1 0 6 1
refdes=HVSENSE2
T 34500 63750 5 10 1 0 0 5 1
value=0.05
}
C 35700 63500 1 0 0 gnd-1.sym
{
T 35600 63500 5 10 1 1 0 0 1
netname=0
}
N 32900 64500 32900 65200 4
N 32900 63500 32900 63900 4
T 31500 68800 9 10 1 0 0 0 1
Electrical model
T 35700 68800 9 10 1 0 0 0 1
Mechanical model
N 35800 63800 35800 63900 4
N 35300 63900 35800 63900 4
C 35700 65700 1 270 0 resistor-2.sym
{
T 36050 65300 5 10 0 0 270 0 1
device=RESISTOR
T 36600 65200 5 10 1 1 180 0 1
value=0.0001
T 36000 65300 5 10 1 1 0 0 1
refdes=R_friction
}
C 35700 66800 1 270 0 inductor-1.sym
{
T 36200 66600 5 10 0 0 270 0 1
device=INDUCTOR
T 36400 66600 5 10 0 0 270 0 1
symversion=0.1
T 37200 66700 5 10 1 1 180 0 1
refdes=L_rotor_Inertia
T 36000 66300 5 10 1 1 0 0 1
value=0.00025
}
N 35300 64500 35800 64500 4
N 35800 64500 35800 64800 4
C 33800 67300 1 0 0 ccvs-1.sym
{
T 34000 68350 5 10 0 0 0 0 1
device=SPICE-ccvs
T 34000 68550 5 10 0 0 0 0 1
symversion=0.1
T 34100 68150 5 10 1 1 0 0 1
refdes=HVSENSE1
T 34600 67250 5 10 1 0 0 5 1
value=0.05
}
N 35300 68000 35800 68000 4
N 35800 66800 35800 68000 4
C 35400 67100 1 0 0 gnd-1.sym
{
T 35300 67100 5 10 1 1 0 0 1
netname=0
}
N 35500 67400 35300 67400 4
B 31100 62900 2400 6200 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 35200 62900 2400 6200 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 34300 68400 9 10 1 0 0 0 2
Torque
voltage
N 35800 68000 36200 68200 4
{
T 36200 68300 5 10 1 1 0 0 1
netname=V_Torque
T 36400 68100 5 10 1 1 0 0 1
comment=represents the Rotor Torque mechanical property
}
C 26700 65800 1 0 0 spice-directive-1.sym
{
T 26800 66100 5 10 0 1 0 0 1
device=directive
T 26800 66200 5 10 1 1 0 0 1
refdes=A1
T 26700 63700 5 10 1 1 0 0 11
value=.options savecurrents
.control
save all @r_coil_resistance[i]  @r_friction[i]
set color0=rgb:f/f/f
set color1=rgb:0/0/0
tran 0.001 1.5s
set curplottitle="Current through motor"
plot @r_coil_resistance[i] vcc
set curplottitle="Rotor angular velocity"
plot  @r_friction[i] 
.endc
}
C 28600 68100 1 270 0 voltage-3.sym
{
T 29300 67900 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 28600 68100 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 25300 67300 5 10 0 1 0 0 1
value=pulse (0 5 0.3 0.001 0.001 0.1 12) DC 5
T 29100 67600 5 10 1 1 0 0 1
refdes=VP1
}
C 28700 66900 1 0 0 gnd-1.sym
{
T 28600 66900 5 10 1 1 0 0 1
netname=0
}
C 28600 68100 1 0 0 vcc-1.sym
{
T 28700 68500 5 10 0 1 0 0 1
netname=vcc
}
N 32900 65000 32500 64900 4
{
T 31600 64700 5 10 1 1 0 0 1
netname=V_Back_Emf
}
T 35900 65900 9 10 1 0 0 0 1
current here stands for the rotor angular velocity
N 33800 64500 32900 64500 4
N 32900 63900 33800 63900 4
N 33800 67400 32900 67400 4
N 32900 67400 32900 67000 4
N 33800 68000 32900 68000 4
N 32900 68000 32900 68100 4
N 35800 65900 35800 65700 4
T 25000 62700 9 10 1 0 0 0 3
When the rotor moves because of the torque, the coils move through 
the magnetic field and hence emf is induced in them as in a generator. 
This voltage is opposite to the applied voltage and is known as Back EMF. 
L 32000 64600 30600 63100 3 0 0 0 -1 -1
L 32000 64500 32000 64600 3 0 0 0 -1 -1
L 31900 64600 32000 64600 3 0 0 0 -1 -1
