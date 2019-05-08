* savecurrents has to be BEFORE .control OR WONT WORK
.options savecurrents

.control

save all @c1[i] @l1[i]
set noaskquit

* transient analysis
* tran Tstep Tstop [ Tstart [ Tmax ] ] [ UIC ]
tran 0.01ms 20ms

run

set color0=rgb:f/f/f
set color1=rgb:0/0/0

set curplottitle="Parallel resonant circuit currents"
plot @c1[i] @l1[i]
set curplottitle="Parallel resonant circuit voltages"
plot vin vout

echo "RLC"
echo ""
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
echo ""
.endc

