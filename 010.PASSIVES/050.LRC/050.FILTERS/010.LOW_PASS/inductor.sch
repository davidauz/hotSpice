v 20130925 2
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
N 45700 68700 46200 68700 4
N 47100 68700 48100 68700 4
{
T 48200 68700 5 10 1 1 0 0 1
netname=vOut
}
N 47600 65000 45700 65000 4
N 47600 66000 47600 65000 4
N 47600 66900 47600 68700 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 44700 67300 5 10 1 1 0 0 1
value=AC 1
T 45500 67600 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44700 67500 5 10 1 1 0 0 1
refdes=VSIGNAL
}
C 47500 66900 1 270 0 resistor-2.sym
{
T 47500 66800 5 10 1 1 180 0 1
refdes=R2
T 47700 66400 5 10 1 1 0 0 1
value=200
}
C 46200 68600 1 0 0 inductor-1.sym
{
T 46400 69100 5 10 0 0 0 0 1
device=INDUCTOR
T 46600 68400 5 10 1 1 0 0 1
refdes=L1
T 46400 69300 5 10 0 0 0 0 1
symversion=0.1
T 46700 69000 5 10 1 1 180 0 1
value=0.01
}
C 46500 64700 1 0 0 gnd-1.sym
{
T 46500 64700 5 10 0 0 0 0 1
netname=0
}
T 49100 67800 9 10 1 0 0 0 9
The plots are done in different runs of the same simulation
on the same circuit, changing the signal frequency to 
5kHz, 8Kz, 16kHz and 64kHz respectively.
The output signal is weaker as the frequency rises.
Note how the phase shift is different in each one.
The SPICE directive here is quite verbose but it is useful
to understand how to perform the same simulation
many times with different parameters.

C 49200 67000 1 0 0 spice-directive-1.sym
{
T 49300 67300 5 10 0 1 0 0 1
device=directive
T 49300 67400 5 10 1 1 0 0 1
refdes=A1
T 49200 60100 5 10 1 1 0 0 35
value=.tran 0.1 0.001 $ initial definition of TRAN or won't work
.control
set color0=rgb:f/f/f
set color1=rgb:0/0/0
* some definitions
set t_step = 0.000001
set t_end = 0.001
set v_max = 1
set v_min = -1

* first simulation at 5kHz
alter @vsignal[sin] [ $v_min $v_max 5000 ]
tran $t_step $t_end
plot vin vout

* 8kHz
alter @vsignal[sin] [ $v_min $v_max 8000 ]
tran $t_step $t_end
plot vin vout

* 16kHz
alter @vsignal[sin] [ $v_min $v_max 16000 ]
tran $t_step $t_end
plot vin vout

* 64kHz
alter @vsignal[sin] [ $v_min $v_max 64000 ]
tran $t_step $t_end
plot vin vout

echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"

.endc
}
