.options savecurrents
.print DC @q1[ib] @q1[ic]
.control
save all @q1[ib] @q1[ic]
dc vce -0.05 1v 0.01 ib 0 1.5ma 0.1ma
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot @q1[ic]
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
