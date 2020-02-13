v 20130925 2
T 35800 70900 9 20 1 0 0 0 1
DC motor speed control
C 33300 67200 1 270 0 voltage-3.sym
{
T 34000 67000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 33800 66800 5 10 1 1 0 0 1
refdes=M_emf
T 33800 66600 5 10 1 1 0 0 1
value=DC 5V
}
N 33500 66300 33500 66000 4
C 33400 65700 1 0 0 gnd-1.sym
{
T 33300 65700 5 10 1 1 0 0 1
netname=0
}
C 33300 67200 1 0 0 vcc-1.sym
{
T 33400 67600 5 10 0 1 0 0 1
netname=vcc
}
C 37900 67800 1 0 0 dc_motor-1.sym
{
T 38300 68800 5 10 0 0 0 0 1
device=DC_MOTOR
T 38400 68400 5 10 1 1 0 0 1
refdes=M1a
}
C 37900 69200 1 0 0 vcc-1.sym
{
T 38000 69600 5 10 0 1 0 0 1
netname=vcc
}
N 38100 68800 38100 69200 4
C 38200 66500 1 90 0 pot-bourns.sym
{
T 37300 67300 5 10 0 0 90 0 1
device=VARIABLE_RESISTOR
T 37800 67300 5 10 1 1 180 0 1
refdes=R1a
}
N 38100 67800 38100 67400 4
C 38000 65300 1 0 0 gnd-1.sym
{
T 37900 65300 5 10 1 1 0 0 1
netname=0
}
N 38100 66500 38100 65600 4
N 37600 67000 37600 66500 4
N 37600 66500 38100 66500 4
T 34900 69900 9 10 1 0 0 0 1
Step 1: how to fry a pot
B 34800 63600 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 35000 63600 9 10 1 0 0 0 7
When the pot is at maximum value, little current will be allowed to pass through
and the motor won't move.   When at minimum, smoke will be seen from the pot,
optionally followed by sparks.
Even a big pot wouldn't be a good solution, because this kind of application is 
usually seen in motors driven by a battery, and nobody wants to waste excess
power as heat.

B 42000 63600 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 45500 67600 1 0 0 dc_motor-1.sym
{
T 45900 68600 5 10 0 0 0 0 1
device=DC_MOTOR
T 46000 68200 5 10 1 1 0 0 1
refdes=M1b
}
C 45500 69000 1 0 0 vcc-1.sym
{
T 45600 69400 5 10 0 1 0 0 1
netname=vcc
}
N 45700 68600 45700 69000 4
N 45700 67600 45700 67200 4
C 45600 65000 1 0 0 gnd-1.sym
{
T 45500 65000 5 10 1 1 0 0 1
netname=0
}
N 45700 66200 45700 65300 4
T 42100 69900 9 10 1 0 0 0 1
Step 2: how to fry a transistor
C 45100 66200 1 0 0 npn-3.sym
{
T 46000 66700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 45100 66200 5 10 0 1 0 0 1
model-name=genericNPN
T 45100 66200 5 10 0 0 0 0 1
model=npn
T 45600 66600 5 10 1 1 0 0 1
refdes=Q1b
}
C 44200 66600 1 0 0 pot-bourns.sym
{
T 45000 67500 5 10 0 0 0 0 1
device=VARIABLE_RESISTOR
T 44800 66500 5 10 1 1 180 0 1
refdes=R1b
}
C 43400 67200 1 0 0 vcc-1.sym
{
T 43500 67600 5 10 0 1 0 0 1
netname=vcc
}
N 44200 66700 43600 66700 4
N 43600 66700 43600 67200 4
N 44700 67200 44700 67300 4
N 44700 67300 44100 67300 4
N 44100 67300 44100 66700 4
T 42300 63700 9 10 1 0 0 0 4
A power transistor would be better, provided it had a sufficiently big dissipator.
This way the current through the pot would be way smaller.
There still is one problem: when the motor stops the back EMF current would 
hit the transistor hard, with the usual flames and smoke show.
B 49200 63600 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 52700 69000 1 0 0 vcc-1.sym
{
T 52800 69400 5 10 0 1 0 0 1
netname=vcc
}
N 52900 68600 52900 69000 4
N 52900 67600 52900 67200 4
C 52800 65000 1 0 0 gnd-1.sym
{
T 52700 65000 5 10 1 1 0 0 1
netname=0
}
N 52900 66200 52900 65300 4
C 52300 66200 1 0 0 npn-3.sym
{
T 53200 66700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 52300 66200 5 10 0 1 0 0 1
model-name=genericNPN
T 52300 66200 5 10 0 0 0 0 1
model=npn
T 52800 66600 5 10 1 1 0 0 1
refdes=Q1c
}
C 51400 66600 1 0 0 pot-bourns.sym
{
T 52200 67500 5 10 0 0 0 0 1
device=VARIABLE_RESISTOR
T 52000 66500 5 10 1 1 180 0 1
refdes=R1c
}
C 50600 67200 1 0 0 vcc-1.sym
{
T 50700 67600 5 10 0 1 0 0 1
netname=vcc
}
N 51400 66700 50800 66700 4
N 50800 66700 50800 67200 4
N 51900 67200 51900 67300 4
N 51900 67300 51300 67300 4
N 51300 67300 51300 66700 4
T 49300 69900 9 10 1 0 0 0 1
Step 3: flyback diode
T 49400 63700 9 10 1 0 0 0 5
The diode (also called snubber diode) dissipates the back EMF current 
without damage.    There is one other problem, though.
DC motors have a big inertia, and this means that at low voltages the rotor
won't move at all.  It will remain firmly stuck until a certain power is given
and then start all of a sudden, rotating fast.
C 53500 67700 1 90 0 diode-1.sym
{
T 52900 68100 5 10 0 0 90 0 1
device=DIODE
T 53900 68200 5 10 1 1 180 0 1
refdes=D1
T 53500 67700 5 10 0 0 0 0 1
model-name=D
T 53500 67700 5 10 0 0 180 0 1
model=default
T 53500 67700 5 10 0 0 180 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 52200 67600 1 0 0 dc_motor-1.sym
{
T 52600 68600 5 10 0 0 0 0 1
device=DC_MOTOR
T 51700 68000 5 10 1 1 0 0 1
refdes=M1c
}
N 52400 68600 53300 68600 4
N 52400 67600 53300 67600 4
N 53300 67600 53300 67700 4
T 56300 69900 9 10 1 0 0 0 1
Step 4: pulse width modulation
T 60800 67900 8 10 1 1 0 0 1
value=1k
C 61900 69100 1 0 0 vcc-1.sym
{
T 62000 69500 5 10 0 1 0 0 1
netname=vcc
}
N 62100 68700 62100 69100 4
N 62100 67700 62100 67400 4
C 62000 65200 1 0 0 gnd-1.sym
{
T 61900 65200 5 10 1 1 0 0 1
netname=0
}
N 62100 66400 62100 65500 4
C 61500 66400 1 0 0 npn-3.sym
{
T 62400 66900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 61500 66400 5 10 0 1 0 0 1
model-name=genericNPN
T 61500 66400 5 10 0 0 0 0 1
model=npn
T 62000 66800 5 10 1 1 0 0 1
refdes=Q1d
}
C 62700 67800 1 90 0 diode-1.sym
{
T 62100 68200 5 10 0 0 90 0 1
device=DIODE
T 62700 67800 5 10 0 0 0 0 1
model-name=D
T 62700 67800 5 10 0 0 180 0 1
model=default
T 62700 67800 5 10 0 0 180 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 62800 68000 5 10 1 1 180 0 1
refdes=D1
}
N 61600 68700 62500 68700 4
N 61600 67700 62500 67700 4
N 62500 67700 62500 67800 4
N 61500 66900 60700 66900 4
B 56300 63600 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 61400 67700 1 0 0 dc_motor-1.sym
{
T 61800 68700 5 10 0 0 0 0 1
device=DC_MOTOR
T 61000 68300 5 10 1 1 0 0 1
refdes=M1d
}
T 56500 64100 9 10 1 0 0 0 4
Instead of modulating the voltage, the accepted solution is to supply our
motor with pulses at full voltage.
The frequency of the pulsas is constant, what changes is the pulse width.
The wider the pulse, the faster goes the motor.
L 57100 67300 57400 67300 3 0 0 0 -1 -1
L 57400 67300 57400 68400 3 0 0 0 -1 -1
L 57400 68400 57900 68400 3 0 0 0 -1 -1
L 57900 68400 57900 67300 3 0 0 0 -1 -1
L 57900 67300 58200 67300 3 0 0 0 -1 -1
L 58200 67300 58200 68400 3 0 0 0 -1 -1
L 58200 68400 58700 68400 3 0 0 0 -1 -1
L 58700 68400 58700 67300 3 0 0 0 -1 -1
L 58700 67300 59000 67300 3 0 0 0 -1 -1
L 59000 67300 59000 68400 3 0 0 0 -1 -1
L 59000 68400 59500 68400 3 0 0 0 -1 -1
L 59500 68400 59500 67300 3 0 0 0 -1 -1
L 57100 65800 57400 65800 3 0 0 0 -1 -1
L 57400 65800 57400 66900 3 0 0 0 -1 -1
L 57400 66900 57700 66900 3 0 0 0 -1 -1
L 57700 66900 57700 65800 3 0 0 0 -1 -1
L 57700 65800 58200 65800 3 0 0 0 -1 -1
L 58200 65800 58200 66900 3 0 0 0 -1 -1
L 58200 66900 58500 66900 3 0 0 0 -1 -1
L 58500 66900 58500 65800 3 0 0 0 -1 -1
L 58500 65800 59000 65800 3 0 0 0 -1 -1
L 59000 65800 59000 66900 3 0 0 0 -1 -1
L 59000 66900 59300 66900 3 0 0 0 -1 -1
L 59300 66900 59300 65800 3 0 0 0 -1 -1
L 59300 65800 59800 65800 3 0 0 0 -1 -1
L 59500 67300 59800 67300 3 0 0 0 -1 -1
