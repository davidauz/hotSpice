v 20130925 2
C 53800 50100 1 270 0 voltage-3.sym
{
T 54500 49900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 54300 49700 5 10 1 1 0 0 1
refdes=V1
T 54300 49500 5 10 1 1 0 0 1
value=DC 5V
}
C 53900 48900 1 0 0 gnd-1.sym
{
T 53800 48900 5 10 1 1 0 0 1
netname=0
}
C 53800 50100 1 0 0 vcc-1.sym
C 61500 52000 1 0 0 spice-directive-1.sym
{
T 61600 52300 5 10 0 1 0 0 1
device=directive
T 61600 52400 5 10 1 1 0 0 1
refdes=A1
T 61500 50400 5 10 1 1 0 0 8
value=.options savecurrents
.control
save all
tran 0.01ms 0.1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
.endc

}
C 57000 49700 1 270 0 diode-1.sym
{
T 57600 49300 5 10 0 0 270 0 1
device=DIODE
T 57000 49700 5 10 0 0 180 0 1
model-name=DIODE
T 57000 49700 5 10 0 0 0 0 1
model=default
T 57000 49700 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 57400 49300 5 10 1 1 0 0 1
refdes=D2b
}
C 57100 48500 1 0 0 gnd-1.sym
{
T 57000 48500 5 10 1 1 0 0 1
netname=0
}
C 57000 50600 1 270 0 diode-1.sym
{
T 57400 50200 5 10 1 1 0 0 1
refdes=D1b
T 57600 50200 5 10 0 0 270 0 1
device=DIODE
T 57000 50600 5 10 0 0 180 0 1
model-name=D
T 57000 50600 5 10 0 0 0 0 1
model=default
T 57000 50600 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
N 57200 49700 57800 49900 4
{
T 57600 49600 5 10 1 1 0 0 1
netname=vd2b
}
C 57000 51500 1 0 0 vcc-1.sym
C 57300 50600 1 90 0 resistor-2.sym
{
T 56950 51000 5 10 0 0 90 0 1
device=RESISTOR
T 57500 51100 5 10 1 1 0 0 1
refdes=R1b
T 57400 50900 5 10 1 1 0 0 1
value=100
}
N 57200 50600 57800 50800 4
{
T 57600 50500 5 10 1 1 0 0 1
netname=vd1b
}
C 55100 50600 1 270 0 diode-1.sym
{
T 55700 50200 5 10 0 0 270 0 1
device=DIODE
T 55100 50600 5 10 0 0 180 0 1
model-name=D
T 55100 50600 5 10 0 0 0 0 1
model=default
T 55100 50600 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 55500 50200 5 10 1 1 0 0 1
refdes=D2a
}
C 55200 49400 1 0 0 gnd-1.sym
{
T 55100 49400 5 10 1 1 0 0 1
netname=0
}
N 55300 50600 55900 50800 4
{
T 55700 50500 5 10 1 1 0 0 1
netname=vd2a
}
C 55100 51500 1 0 0 vcc-1.sym
C 55400 50600 1 90 0 resistor-2.sym
{
T 55050 51000 5 10 0 0 90 0 1
device=RESISTOR
T 55600 51100 5 10 1 1 0 0 1
refdes=R1a
T 55500 50900 5 10 1 1 0 0 1
value=100
}
C 58700 49700 1 270 0 diode-1.sym
{
T 59300 49300 5 10 0 0 270 0 1
device=DIODE
T 58700 49700 5 10 0 0 180 0 1
model-name=DIODE
T 58700 49700 5 10 0 0 0 0 1
model=default
T 58700 49700 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 59100 49300 5 10 1 1 0 0 1
refdes=D2c
}
C 58700 50600 1 270 0 diode-1.sym
{
T 59300 50200 5 10 0 0 270 0 1
device=DIODE
T 58700 50600 5 10 0 0 180 0 1
model-name=D
T 58700 50600 5 10 0 0 0 0 1
model=default
T 58700 50600 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 59100 50200 5 10 1 1 0 0 1
refdes=D1c
}
N 58900 49700 59500 49900 4
{
T 59300 49600 5 10 1 1 0 0 1
netname=vd2c
}
C 58700 51500 1 0 0 vcc-1.sym
C 59000 50600 1 90 0 resistor-2.sym
{
T 58650 51000 5 10 0 0 90 0 1
device=RESISTOR
T 59200 51100 5 10 1 1 0 0 1
refdes=R1c
T 59100 50900 5 10 1 1 0 0 1
value=100
}
N 58900 50600 59500 50800 4
{
T 59300 50500 5 10 1 1 0 0 1
netname=vd1c
}
C 58800 47600 1 0 0 gnd-1.sym
{
T 58700 47600 5 10 1 1 0 0 1
netname=0
}
C 58700 48800 1 270 0 diode-1.sym
{
T 59300 48400 5 10 0 0 270 0 1
device=DIODE
T 58700 48800 5 10 0 0 180 0 1
model-name=DIODE
T 58700 48800 5 10 0 0 0 0 1
model=default
T 58700 48800 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 59100 48400 5 10 1 1 0 0 1
refdes=D3c
}
N 58900 48800 59500 49000 4
{
T 59300 48700 5 10 1 1 0 0 1
netname=vd3c
}
C 60100 49700 1 270 0 diode-1.sym
{
T 60700 49300 5 10 0 0 270 0 1
device=DIODE
T 60100 49700 5 10 0 0 180 0 1
model-name=DIODE
T 60100 49700 5 10 0 0 0 0 1
model=default
T 60100 49700 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 60500 49300 5 10 1 1 0 0 1
refdes=D2d
}
C 60100 50600 1 270 0 diode-1.sym
{
T 60700 50200 5 10 0 0 270 0 1
device=DIODE
T 60100 50600 5 10 0 0 180 0 1
model-name=D
T 60100 50600 5 10 0 0 0 0 1
model=default
T 60100 50600 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 60500 50200 5 10 1 1 0 0 1
refdes=D1d
}
N 60300 49700 60900 49900 4
{
T 60700 49600 5 10 1 1 0 0 1
netname=vd2d
}
C 60100 50600 1 0 0 vcc-1.sym
C 60100 48800 1 270 0 diode-1.sym
{
T 60700 48400 5 10 0 0 270 0 1
device=DIODE
T 60100 48800 5 10 0 0 180 0 1
model-name=DIODE
T 60100 48800 5 10 0 0 0 0 1
model=default
T 60100 48800 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 60500 48400 5 10 1 1 0 0 1
refdes=D3d
}
N 60300 48800 60900 49000 4
{
T 60700 48700 5 10 1 1 0 0 1
netname=vd3d
}
C 60200 46700 1 0 0 gnd-1.sym
{
T 60100 46700 5 10 1 1 0 0 1
netname=0
}
C 60100 47900 1 270 0 diode-1.sym
{
T 60700 47500 5 10 0 0 270 0 1
device=DIODE
T 60100 47900 5 10 0 0 180 0 1
model-name=DIODE
T 60100 47900 5 10 0 0 0 0 1
model=default
T 60100 47900 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 60500 47500 5 10 1 1 0 0 1
refdes=D4d
}
N 60300 47900 60900 48100 4
{
T 60700 47800 5 10 1 1 0 0 1
netname=vd4d
}
