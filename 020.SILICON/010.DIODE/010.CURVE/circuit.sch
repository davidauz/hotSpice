v 20130925 2
C 45600 64700 1 0 0 gnd-1.sym
{
T 45600 64700 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
N 47600 65000 45700 65000 4
N 47600 66000 47600 65000 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
C 47400 66900 1 270 0 diode-1.sym
{
T 48000 66500 5 10 0 0 270 0 1
device=DIODE
T 47800 66500 5 10 1 1 0 0 1
refdes=D1
T 47400 66900 5 10 0 0 180 0 1
model-name=mydiode
T 47400 66900 5 10 0 0 0 0 1
model=cj=0
}
N 45700 68700 47600 68700 4
C 47500 68300 1 270 0 resistor-2.sym
{
T 47500 67900 5 10 1 1 180 0 1
refdes=R2
T 47700 67800 5 10 1 1 0 0 1
value=10
}
N 47600 67400 47600 66900 4
N 47600 68300 47600 68700 4
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=DC 1
T 44400 67100 5 10 1 1 0 0 1
refdes=VSIGNAL
}
T 48300 66900 9 10 1 0 0 0 8
It is possible to explore the model parameters with:

   showmod d1

and to see one parameter only:

  showmod d1 : cta

T 48300 66500 9 10 1 0 0 0 2
See all model parameters with:
  devhelp diode
T 48300 68900 9 10 1 0 0 0 6
This example outputs three plots.
The first is the diode curve of the SPICE
default diode model.
The second graph is a model that I found around.
The third is a Zener diode.
See the SPICE directive to see how to switch models.
C 40100 69800 1 0 0 spice-directive-1.sym
{
T 40200 70100 5 10 0 1 0 0 1
device=directive
T 40200 70200 5 10 1 1 0 0 1
refdes=A1
T 40100 64500 5 10 1 1 0 0 27
value=.options savecurrents
.control
save @d1[id]
dc vsignal -10 3 0.01
set color0=rgb:f/f/f
set color1=rgb:0/0/0

* first plot use the SPICE default model
set curplottitle="SPICE Default"
plot @d1[id]

* second plot use one real diode model
altermod mydiode file = diode1.mod
dc vsignal -10 3 0.01
set curplottitle="Real diode model"
plot @d1[id]

* Third plot is a ZENER diode
altermod mydiode file = diode2.mod
dc vsignal -10 3 0.01
set curplottitle="Zener"
plot @d1[id]

echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
