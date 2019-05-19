v 20130925 2
C 53400 50400 1 0 0 gnd-1.sym
{
T 53500 50200 5 10 1 1 0 0 1
netname=0
}
C 57800 47200 1 0 0 nmos-1.sym
{
T 58500 48000 5 10 0 0 0 0 1
device=NMOS_TRANSISTOR
T 58500 47800 5 10 0 1 0 0 1
refdes=Q?
T 58500 48200 5 10 0 0 0 0 1
symversion=0.1
T 57800 46900 5 10 1 1 0 0 1
comment=NMOS transistor
T 57800 47200 5 10 0 0 0 0 1
graphical=1
}
C 57800 45800 1 0 0 pmos-1.sym
{
T 58400 46000 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 58500 46400 5 10 0 1 0 0 1
refdes=Q?
T 57600 45500 5 10 1 1 0 0 1
comment=PMOS transistor
T 57800 45800 5 10 0 0 0 0 1
graphical=1
}
C 49700 46300 1 0 0 nmos-3.sym
{
T 50300 46800 5 10 0 0 0 0 1
device=NMOS_TRANSISTOR
T 50400 46900 5 10 0 1 0 0 1
refdes=J1
T 50300 46700 5 10 1 1 0 0 1
comment=N channel MOSFET: enhancement mode insulated gate FET
T 49700 46300 5 10 0 0 0 0 1
graphical=1
}
C 49700 47400 1 0 0 pmos-3.sym
{
T 50300 47900 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 50400 48000 5 10 0 1 0 0 1
refdes=Q?
T 50300 47700 5 10 1 1 0 0 1
comment=P channel MOSFET: enhancement mode insulated gate FET
T 49700 47400 5 10 0 0 0 0 1
graphical=1
}
N 53500 50800 53500 50700 4
N 53500 51700 53500 52000 4
N 53500 52000 54700 52000 4
N 55300 51600 55300 50700 4
N 53500 50700 57200 50700 4
C 57000 52600 1 270 0 voltage-3.sym
{
T 57700 52400 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 57500 52200 5 10 1 1 0 0 1
refdes=Vds
T 57500 52000 5 10 1 1 0 0 1
value=DC 0
}
N 57200 52600 57200 53500 4
N 55300 53500 57200 53500 4
N 55300 53500 55300 52400 4
N 57200 51700 57200 50700 4
T 50600 52700 9 10 1 0 0 0 5
To make this work, the NJFET component
has to have the "NFET_TRANSISTOR"
device description.
See  "Native components and their attributes"
at:  http://wiki.geda-project.org/geda:csygas
T 51400 48600 9 10 1 0 0 0 2
Here are other library symbols for reference.
Enhancement mode are normally OFF, while Depletion mode are normally ON.
T 54600 52100 9 10 1 0 0 0 1
gate
T 55400 52200 9 10 1 0 0 0 1
drain
T 55400 51700 9 10 1 0 0 0 1
source
T 51400 49000 9 10 1 0 0 0 5
The JFET works with a reverse-biased gate-source junction; this is why it has a very high input resistance.
The gate is not insulated from the other terminals, so there is a leakage current.
In the MOSFET there is no leakage because the "O" is Oxide and that is an insulant.
MOSFET are also called Insulated-gate Field Effect Transistor or IGFET.

C 53300 51700 1 270 0 voltage-3.sym
{
T 54000 51500 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 53800 51300 5 10 1 1 0 0 1
refdes=Vgs
T 53800 51100 5 10 1 1 0 0 1
value=DC 0
}
C 54700 51600 1 0 0 njfet.sym
{
T 55000 52400 5 10 1 1 0 0 1
refdes=J1
T 55395 51695 5 10 0 1 0 0 1
device=NFET_TRANSISTOR
}
C 58800 53100 1 0 0 spice-directive-1.sym
{
T 58900 53400 5 10 0 1 0 0 1
device=directive
T 58900 53500 5 10 1 1 0 0 1
refdes=A1
T 58800 51300 5 10 1 1 0 0 10
value=.options savecurrents
.print DC @j1[id]
.control
save all @j1[id]
dc vds 0 10 0.1 vgs -1.2 0 .1
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot @j1[id]
.endc

}
