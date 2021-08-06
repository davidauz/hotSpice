v 20130925 2
C 57800 52200 1 0 0 npn-3.sym
{
T 58700 52700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58500 53000 5 10 1 1 0 0 1
refdes=Q_not_gate_1
T 57800 52200 5 10 0 0 0 0 1
model-name=genericNpn
T 57800 52200 5 10 0 1 0 0 1
model=npn (bf=100)
}
N 58400 52200 58400 51600 4
C 58500 53900 1 90 0 resistor-2.sym
{
T 58150 54300 5 10 0 0 90 0 1
device=RESISTOR
T 58600 54300 5 10 1 1 0 0 1
value=500
T 58600 54500 5 10 1 1 0 0 1
refdes=R_not_gate_load
}
N 58400 54800 58400 55100 4
N 58400 53200 58400 53900 4
N 58400 53700 58800 53700 4
C 58500 54800 1 0 1 spice-subcircuit-IO-1.sym
{
T 57600 55200 5 10 0 1 0 6 1
device=spice-IO
T 57750 55350 5 10 1 1 180 6 1
refdes=P1
}
N 58400 55100 58300 55100 4
C 52400 54400 1 0 0 not.sym
{
T 53450 54550 5 8 0 0 0 0 1
device=NOT_GATE
T 53100 55200 5 10 1 1 0 0 1
refdes=X?
T 52400 54200 5 10 1 0 0 0 1
graphical=1
}
C 58600 51300 1 0 1 spice-subcircuit-IO-1.sym
{
T 57700 51700 5 10 0 1 0 6 1
device=spice-IO
T 57850 51850 5 10 1 1 180 6 1
refdes=P3
}
C 56600 52400 1 0 1 spice-subcircuit-IO-1.sym
{
T 55700 52800 5 10 0 1 0 6 1
device=spice-IO
T 55850 52950 5 10 1 1 180 6 1
refdes=P2
}
C 58600 54000 1 180 1 spice-subcircuit-IO-1.sym
{
T 59500 53600 5 10 0 1 180 6 1
device=spice-IO
T 59350 53450 5 10 1 1 0 6 1
refdes=P4
}
C 56600 56000 1 0 0 spice-subcircuit-LL-1.sym
{
T 56700 56300 5 10 0 1 0 0 1
device=spice-subcircuit-LL
T 56700 56400 5 10 1 1 0 0 1
refdes=A1
T 56700 56100 5 10 1 1 0 0 1
model-name=not_gate
}
T 59200 55300 9 10 1 0 0 0 4
P1=+V
P2=input
P3=0
P4=output
T 51500 55400 9 10 1 0 0 0 7
This is the symbol for this SUBCKT.
It can be copy-pasted into the upper level schematic.
Remember to remove the "graphical" attribute.

N.B.: the symbol itself is in the folder
specified in the gafrc file

T 60700 51000 9 10 1 0 0 0 27
1. Draw the schematic and place a spice-subcircuit-LL block (spice-subcircuit-LL-1.sym). 
   This needs a model-name attribute so that gnetlist will insert a .SUBCKT row.
   In this example the model-name is 'not_gate'.
2. Every input and output pin will need a spice-subcircuit-IO symbol (spice-subcircuit-IO-1.sym).
   Each one will have a refdes numbered in the same order they will be used 
   in the output .SUBCKT.  Here we have P1, P2 and so on.
3. When everything is in place, use gnetlist to produce a netlist:
    gnetlist -g spice-sdb -o not.SUBCKT.mod not.SUBCKT.sch
4. Create a symbol with gschem to use as an instance of the SUBCKT in other circuits.
   Just like it was a drawing, then 'save as'='symbols'.
   The pins in the symbol are to be numbered in the same order as the P1, P2, ... above.
   Use the "PINSEQ" attribute for this. 
   Add these attributes:
   refdes = "X?"
   device="NOT_GATE". Be sure to use a unique name for 'device', different from all those 
       already present, or it won't work.
   In this schematic there already is an istance of this new symbol that you can inspect 
    right clicking on it and selecting "Down Symbol".  You can copy-paste it to other circuits too.
   In this case remember to remove the "graphical" attribute: it is there only to tell gnetlist 
   to ignore it.
5. In the upper level schematic, use the new symbol as many times as it is necessary just as if
   it was a normal component.  See the test.not.sch file.
   Provide the following attributes:
    file=not.SUBCKT.mod (the netlist created at step 3.)
    model-name=not_gate (same as step 1.)
    refdes=X1, X2, ... 
6. I couldn't for the life of me figure out how to make hierarchy work.
T 62800 56900 9 10 1 0 0 0 1
How to create a SUBCKT
C 57600 52800 1 180 0 resistor-2.sym
{
T 57200 52450 5 10 0 0 180 0 1
device=RESISTOR
T 56700 52200 5 10 1 1 0 0 1
value=10k
T 56700 52400 5 10 1 1 0 0 1
refdes=R_sr_subckt_3
}
N 56400 52700 56700 52700 4
N 57600 52700 57800 52700 4
T 57100 57000 9 10 1 0 0 0 2
Tis is the NOT gate as a subcircuit, to be used as
a building block for more complex circuits.
T 51300 51200 9 10 1 0 0 0 4
Generate the cir file with:
gnetlist -g spice-sdb -o not.SUBCKT.cir not.SUBCKT.sch
In order for other schematics to use it, copy the cir file here:
cp not.SUBCKT.cir ../../../../subckts
