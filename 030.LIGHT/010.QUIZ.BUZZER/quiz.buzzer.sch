v 20130925 2
N 60300 49700 60300 61500 4
N 60300 49700 65200 49700 4
N 65200 49700 65200 52300 4
N 60100 49500 60100 61000 4
N 60100 49500 65400 49500 4
N 65400 49500 65400 57100 4
N 60500 57100 59900 57100 4
N 59900 57100 59900 49300 4
N 59900 49300 65600 49300 4
N 60500 56600 60300 56600 4
N 60500 52300 60100 52300 4
N 60500 51800 59900 51800 4
N 65600 49300 65600 61500 4
N 58600 62000 60500 62000 4
N 58600 57600 60500 57600 4
N 58600 52800 60500 52800 4
N 60500 61500 60300 61500 4
N 60500 61000 60100 61000 4
C 66000 61100 1 0 0 not.sym
{
T 67050 61250 5 8 0 0 0 0 1
device=NOT_GATE
T 66700 61900 5 10 1 1 0 0 1
refdes=X7
T 65900 60600 5 10 0 1 0 0 1
file=../../subckts/not.SUBCKT.cir
T 64400 60700 5 10 0 0 0 0 1
model-name=not_gate
}
N 67100 61500 67800 61500 4
N 64000 61500 66000 61500 4
C 66000 56700 1 0 0 not.sym
{
T 67050 56850 5 8 0 0 0 0 1
device=NOT_GATE
T 64500 56500 5 10 0 0 0 0 1
file=../../subckts/not.SUBCKT.cir
T 64400 56300 5 10 0 0 0 0 1
model-name=not_gate
T 66700 57500 5 10 1 1 0 0 1
refdes=X8
}
N 64000 57100 66000 57100 4
N 67100 57100 67400 57100 4
C 66000 51900 1 0 0 not.sym
{
T 67050 52050 5 8 0 0 0 0 1
device=NOT_GATE
T 64500 51700 5 10 0 0 0 0 1
file=../../subckts/not.SUBCKT.cir
T 64400 51500 5 10 0 0 0 0 1
model-name=not_gate
T 66700 52700 5 10 1 1 0 0 1
refdes=X9
}
N 64000 52300 66000 52300 4
N 67100 52300 67400 52300 4
C 57000 61500 1 0 0 set-reset.sym
{
T 57200 62900 5 10 1 1 0 0 1
refdes=X1
T 57100 60300 5 10 0 0 0 0 1
device=sr_latch
T 58000 62900 5 10 0 1 0 0 1
file=../../subckts/sr.SUBCKT.cir
T 58100 63200 5 10 0 1 0 0 1
model-name=sr_latch
T 57100 60700 5 10 0 0 0 0 1
model=sr_latch
}
C 57000 57100 1 0 0 set-reset.sym
{
T 57200 58500 5 10 1 1 0 0 1
refdes=X2
T 57100 55900 5 10 0 0 0 0 1
device=sr_latch
T 57100 55700 5 10 0 0 0 0 1
file=../../subckts/sr.SUBCKT.cir
T 57100 56100 5 10 0 0 0 0 1
model-name=sr_latch
T 57100 56300 5 10 0 0 0 0 1
model=sr_latch
}
C 57000 52300 1 0 0 set-reset.sym
{
T 57200 53700 5 10 1 1 0 0 1
refdes=X3
T 57100 51100 5 10 0 0 0 0 1
device=sr_latch
T 57100 50900 5 10 0 0 0 0 1
file=../../subckts/sr.SUBCKT.cir
T 57100 51300 5 10 0 0 0 0 1
model-name=sr_latch
T 57100 51500 5 10 0 0 0 0 1
model=sr_latch
}
C 66400 51600 1 0 0 gnd-1.sym
{
T 66400 51600 5 10 0 0 0 0 1
netname=0
}
C 66400 60800 1 0 0 gnd-1.sym
{
T 66400 60800 5 10 0 0 0 0 1
netname=0
}
C 57700 52000 1 0 0 gnd-1.sym
{
T 57700 52000 5 10 0 0 0 0 1
netname=0
}
C 57700 56800 1 0 0 gnd-1.sym
{
T 57700 56800 5 10 0 0 0 0 1
netname=0
}
C 57700 61200 1 0 0 gnd-1.sym
{
T 57700 61200 5 10 0 0 0 0 1
netname=0
}
C 66400 56400 1 0 0 gnd-1.sym
{
T 66400 56400 5 10 0 0 0 0 1
netname=0
}
C 54100 62100 1 0 0 spice-vc-switch-1.sym
{
T 55700 62800 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53800 63500 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 54900 62000 5 12 1 1 0 0 1
refdes=S1
T 54800 62250 5 8 1 1 0 0 1
model-name=swmod1
}
C 53300 63200 1 270 0 voltage-3.sym
{
T 54000 63000 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 53300 63200 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 50000 62400 5 10 0 1 0 0 1
value=pulse (0 5 0.3 0.001 0.001 0.1 1) DC 5
T 53800 62700 5 10 1 1 0 0 1
refdes=VP1
}
N 53500 63200 54300 63200 4
N 54300 63200 54300 63100 4
N 53500 62300 54300 62300 4
N 54300 62300 54300 62500 4
N 53900 61900 53900 62300 4
N 53500 63200 53000 63000 4
{
T 52500 62900 5 10 1 1 0 0 1
netname=VPL1
}
N 55800 62500 57000 62500 4
C 53800 61600 1 0 0 gnd-1.sym
{
T 53800 61600 5 10 0 0 0 0 1
netname=0
}
C 54100 57700 1 0 0 spice-vc-switch-1.sym
{
T 55700 58400 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53800 59100 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 54900 57600 5 12 1 1 0 0 1
refdes=S2
T 54800 57850 5 8 1 1 0 0 1
model-name=swmod2
}
C 53300 58800 1 270 0 voltage-3.sym
{
T 54000 58600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 53300 58800 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 50000 58000 5 10 0 1 0 0 1
value=pulse (0 5 1 0.001 0.001 0.1 0.5) DC 5
T 53800 58300 5 10 1 1 0 0 1
refdes=VP2
}
N 53500 58800 54300 58800 4
N 54300 58800 54300 58700 4
N 53500 57900 54300 57900 4
N 54300 57900 54300 58100 4
N 53900 57500 53900 57900 4
N 53500 58800 53000 58600 4
{
T 52500 58500 5 10 1 1 0 0 1
netname=vpl2
}
C 53800 57200 1 0 0 gnd-1.sym
{
T 53800 57200 5 10 0 0 0 0 1
netname=0
}
C 54100 52900 1 0 0 spice-vc-switch-1.sym
{
T 55700 53600 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53800 54300 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 54900 52800 5 12 1 1 0 0 1
refdes=S3
T 54800 53050 5 8 1 1 0 0 1
model-name=swmod3
}
C 53300 54000 1 270 0 voltage-3.sym
{
T 54000 53800 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 53300 54000 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 50000 53200 5 10 0 1 0 0 1
value=pulse (0 5 1 0.001 0.001 0.1 0.5) DC 5
T 53800 53500 5 10 1 1 0 0 1
refdes=VP3
}
N 53500 54000 54300 54000 4
N 54300 54000 54300 53900 4
N 53500 53100 54300 53100 4
N 54300 53100 54300 53300 4
N 53900 52700 53900 53100 4
N 53500 54000 53000 53800 4
{
T 52500 53700 5 10 1 1 0 0 1
netname=vpl3
}
C 53800 52400 1 0 0 gnd-1.sym
{
T 53800 52400 5 10 0 0 0 0 1
netname=0
}
N 55800 53300 57200 53300 4
C 54100 49900 1 0 0 spice-vc-switch-1.sym
{
T 55700 50600 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53800 51300 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 54900 49800 5 12 1 1 0 0 1
refdes=SRESET
T 54800 50050 5 8 1 1 0 0 1
model-name=swmodR
}
C 53300 51000 1 270 0 voltage-3.sym
{
T 54000 50800 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 53300 51000 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 50000 50200 5 10 0 1 0 0 1
value=pulse (0 5 0.02 0.001 0.001 0.1 0.5) DC 5
T 53800 50500 5 10 1 1 0 0 1
refdes=VPR
}
N 53500 51000 54300 51000 4
N 54300 51000 54300 50900 4
N 53500 50100 54300 50100 4
N 54300 50100 54300 50300 4
N 53900 49700 53900 50100 4
N 53500 51000 53000 50800 4
{
T 52500 50700 5 10 1 1 0 0 1
netname=vJudge
}
C 53800 49400 1 0 0 gnd-1.sym
{
T 53800 49400 5 10 0 0 0 0 1
netname=0
}
N 55800 50300 56300 50300 4
N 56300 52800 57000 52800 4
N 55800 58100 57000 58100 4
N 57000 62000 56300 62000 4
N 56300 50300 56300 62000 4
N 56300 57600 57000 57600 4
N 58600 62500 59300 62500 4
N 59300 58100 58600 58100 4
N 58600 53300 59300 53300 4
C 60500 60100 1 0 0 nand-gate.sym
{
T 62195 62695 5 10 0 0 0 0 1
device=NAND_GATE
T 62295 62395 5 10 1 1 0 0 1
refdes=X4
T 62195 63095 5 10 0 0 0 0 1
footprint=0
T 62300 62600 5 10 0 0 0 0 1
model-name=nand_gate
T 62300 62800 5 10 0 0 0 0 1
file=../../subckts/nand.3.SUBCKT.cir
}
C 61900 59800 1 0 0 gnd-1.sym
{
T 61900 59800 5 10 0 0 0 0 1
netname=0
}
C 60500 55700 1 0 0 nand-gate.sym
{
T 62195 58295 5 10 0 0 0 0 1
device=NAND_GATE
T 62195 58695 5 10 0 0 0 0 1
footprint=0
T 62295 57995 5 10 1 1 0 0 1
refdes=X5
T 62300 58200 5 10 0 0 0 0 1
model-name=nand_gate
T 62300 58400 5 10 0 0 0 0 1
file=../../subckts/nand.3.SUBCKT.cir
}
C 61900 55400 1 0 0 gnd-1.sym
{
T 61900 55400 5 10 0 0 0 0 1
netname=0
}
C 60500 50900 1 0 0 nand-gate.sym
{
T 62195 53495 5 10 0 0 0 0 1
device=NAND_GATE
T 62195 53895 5 10 0 0 0 0 1
footprint=0
T 62295 53195 5 10 1 1 0 0 1
refdes=X6
T 62300 53400 5 10 0 0 0 0 1
model-name=nand_gate
T 62300 53600 5 10 0 0 0 0 1
file=../../subckts/nand.3.SUBCKT.cir
}
C 61900 50600 1 0 0 gnd-1.sym
{
T 61900 50600 5 10 0 0 0 0 1
netname=0
}
C 65600 65300 1 0 0 vcc-1.sym
{
T 65600 65300 5 10 0 0 0 0 1
netname=vcc
}
C 65700 64100 1 0 0 gnd-1.sym
C 65600 65300 1 270 0 voltage-3.sym
{
T 66300 65100 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 66100 64900 5 10 1 1 0 0 1
refdes=V1
T 66100 64700 5 10 1 1 0 0 1
value=DC 5V
}
C 57600 63000 1 0 0 vcc-1.sym
{
T 57600 63000 5 10 0 0 0 0 1
netname=vcc
}
C 61800 62900 1 0 0 vcc-1.sym
{
T 61800 62900 5 10 0 0 0 0 1
netname=vcc
}
C 66300 61900 1 0 0 vcc-1.sym
{
T 66300 61900 5 10 0 0 0 0 1
netname=vcc
}
C 57600 58600 1 0 0 vcc-1.sym
{
T 57600 58600 5 10 0 0 0 0 1
netname=vcc
}
C 61800 58500 1 0 0 vcc-1.sym
{
T 61800 58500 5 10 0 0 0 0 1
netname=vcc
}
C 66300 57500 1 0 0 vcc-1.sym
{
T 66300 57500 5 10 0 0 0 0 1
netname=vcc
}
C 57600 53800 1 0 0 vcc-1.sym
{
T 57600 53800 5 10 0 0 0 0 1
netname=vcc
}
C 61800 53700 1 0 0 vcc-1.sym
{
T 61800 53700 5 10 0 0 0 0 1
netname=vcc
}
C 66300 52700 1 0 0 vcc-1.sym
{
T 66300 52700 5 10 0 0 0 0 1
netname=vcc
}
T 55600 64900 9 10 1 0 0 0 10
Here is one funny application of the RTL SUBCKTs in the previous examples.
It is supposed to be a quiz buzzer (well, actually more a quiz LED lighter).

The plots show some interaction where the three player buttons are
pushed in various combinations, then the judge pushes the reset button.

Yes I know the SPICE directive is long: it tests some of the possible conditions.

Please note how the command 'alter' is used to change the parameters
of an independent voltage source.
N 57000 58100 56900 59200 4
{
T 56700 59300 5 10 1 1 0 0 1
netname=PL2
}
N 57000 53300 56900 54400 4
{
T 56700 54500 5 10 1 1 0 0 1
netname=PL3
}
N 56300 51400 57100 51600 4
{
T 56900 51700 5 10 1 1 0 0 1
netname=JUDGE
}
N 56600 62500 56500 63600 4
{
T 56300 63700 5 10 1 1 0 0 1
netname=PL1
}
N 67300 61500 67700 62000 4
{
T 67600 62100 5 10 1 1 0 0 1
netname=L1
}
C 67800 61300 1 0 0 diode-1.sym
{
T 68200 61900 5 10 0 0 0 0 1
device=DIODE
T 68400 61900 5 10 1 1 180 0 1
refdes=D1
T 67800 61300 5 10 0 0 270 0 1
model-name=D
T 67800 61300 5 10 0 0 90 0 1
model=default
T 67800 61300 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 67800 61300 5 10 1 0 0 0 1
graphical=1
}
N 68700 61500 69200 61500 4
N 69200 61500 69200 61200 4
C 69100 60900 1 0 0 gnd-1.sym
{
T 69100 60900 5 10 0 0 0 0 1
netname=0
}
N 68300 57100 68800 57100 4
N 68800 57100 68800 56800 4
C 68700 56500 1 0 0 gnd-1.sym
{
T 68700 56500 5 10 0 0 0 0 1
netname=0
}
C 67400 56900 1 0 0 diode-1.sym
{
T 68000 57500 5 10 1 1 180 0 1
refdes=D2
T 67800 57500 5 10 0 0 0 0 1
device=DIODE
T 67400 56900 5 10 0 0 270 0 1
model-name=D
T 67400 56900 5 10 0 0 90 0 1
model=default
T 67400 56900 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 67600 56700 5 10 1 0 0 0 1
graphical=1
}
N 68300 52300 68800 52300 4
N 68800 52300 68800 52000 4
C 68700 51700 1 0 0 gnd-1.sym
{
T 68700 51700 5 10 0 0 0 0 1
netname=0
}
C 67400 52100 1 0 0 diode-1.sym
{
T 68000 52700 5 10 1 1 180 0 1
refdes=D3
T 67800 52700 5 10 0 0 0 0 1
device=DIODE
T 67400 52100 5 10 0 0 270 0 1
model-name=D
T 67400 52100 5 10 0 0 90 0 1
model=default
T 67400 52100 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
T 67400 51900 5 10 1 0 0 0 1
graphical=1
}
N 59300 62500 59700 63000 4
{
T 59600 63100 5 10 1 1 0 0 1
netname=q1
}
C 55700 62800 1 0 0 gnd-1.sym
{
T 55700 62800 5 10 0 0 0 0 1
netname=0
}
C 55700 58400 1 0 0 gnd-1.sym
{
T 55700 58400 5 10 0 0 0 0 1
netname=0
}
C 55700 53600 1 0 0 gnd-1.sym
{
T 55700 53600 5 10 0 0 0 0 1
netname=0
}
C 55700 50600 1 0 0 gnd-1.sym
{
T 55700 50600 5 10 0 0 0 0 1
netname=0
}
N 67300 57100 67500 57800 4
{
T 67500 57800 5 10 1 1 0 0 1
netname=L2
}
N 67200 52300 67400 53000 4
{
T 67400 53000 5 10 1 1 0 0 1
netname=L3
}
C 70000 65700 1 0 0 spice-directive-1.sym
{
T 70100 66000 5 10 0 1 0 0 1
device=directive
T 70100 66100 5 10 1 1 0 0 1
refdes=A1
T 70000 47100 5 10 1 1 0 0 93
value=.control
set color0=rgb:f/f/f
set color1=rgb:0/0/0
* set constant values (unchanging for all iterations)
set init_v=0
set puls_v=5
set rise_t=0.001
set fall_t=0.001
set pulsew=0.1
set period=0.5

* initially set the delays so that all three inputs are out of the simulation range
set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
* now modify delay for one player only so that it is in the range
set delayt=0.3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
* perform simulation
tran 1ms 2s
set curplottitle="Player 1 first"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

* and so on, all other iterations are variations on the first iteration.
* see plot title to understand what's going on.
set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.3
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
tran 1ms 2s
set curplottitle="Player 2 first"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.3
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
tran 1ms 2s
set curplottitle="Player 3 first"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
* set delays so that two players strike one after another
set delayt=0.3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.34
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
tran 1ms 2s
set curplottitle="Player 1 wins against player 2"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
* set delays so that three players strike one after another
set delayt=0.3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.34
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.35
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
tran 1ms 2s
set curplottitle="Player 1 wins against player 2 and 3"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

set delayt=3
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
* set delays so that three players strike one after another
set delayt=0.3
alter @vp3[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.34
alter @vp2[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
set delayt=0.35
alter @vp1[pulse] = [ $init_v $puls_v $delayt $rise_t $fall_t $pulsew $period ] 
tran 1ms 2s
set curplottitle="Player 3 wins against player 2 and 1"
plot vjudge vpl1 vpl2 vpl3 L1+5 L2+10 L3+15

echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 52500 63400 9 10 1 0 0 0 1
This gives a pulse as "Player ONE"
T 51700 64100 9 10 1 0 0 0 1
This is the button that Player ONE is supposed to operate.
B 52200 61300 3800 2700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 52200 56700 3800 2700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 52200 59200 9 10 1 0 0 0 1
Player 2
B 52200 52100 3800 2700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 52200 54600 9 10 1 0 0 0 1
Player 3
B 52200 48700 3800 2700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 52200 51200 9 10 1 0 0 0 1
The judge who resets all lights to zero.
