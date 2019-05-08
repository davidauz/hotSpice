set title "Characteristic curve of a transistor in saturation"
set style data lines

set ylabel "Ib"
set xlabel "Vce"
set zlabel "Ie"


# stats [1:2] "transistor.load.dat" nooutput
stats "transistor.load.dat" using 2 nooutput
vce_min = STATS_min
vce_max = STATS_max
bjt_arrow_x_start = vce_max

stats "transistor.load.dat" using 3 nooutput
ib_min = STATS_min
ib_max = STATS_max
bjt_arrow_y_start = ib_min

stats "transistor.load.dat" using 4 nooutput
ic_min = STATS_min
ic_max = STATS_max
bjt_arrow_z_start = ic_min
set zrange [ic_min:ic_max]

stats "transistor.load.dat" using 5 nooutput
vdif_min = STATS_min
vdif_max = STATS_max
set cbrange [vdif_min:vdif_max]

stats "resistor.curve.dat" using 2 nooutput
res_arrow_x_start=STATS_median
stats "resistor.curve.dat" using 3 nooutput
res_arrow_y_start=STATS_median
stats "resistor.curve.dat" using 4 nooutput
res_arrow_z_start = STATS_median

set arrow 2 from res_arrow_x_start, res_arrow_y_start, res_arrow_z_start to res_arrow_x_start, res_arrow_y_start, res_arrow_z_start*2 lt -1
set label 2 "resistor curve" at res_arrow_x_start, res_arrow_y_start, res_arrow_z_start*2 centre

set label 1 "slope where BJT is\nacting as amplifier" at bjt_arrow_x_start+0.1,bjt_arrow_y_start,bjt_arrow_z_start centre
set label 3 "heatmap of Vce-Vbe" center at res_arrow_x_start,res_arrow_y_start,ic_min
# res_arrow_x_start,res_arrow_y_start,ic_min+0.5 centre
set arrow 3 from res_arrow_x_start,res_arrow_y_start,ic_min to res_arrow_x_start,res_arrow_y_start,ic_min-ic_max/2 lt -1

set palette defined (	0 '#0000ff',\
	1 '#ff0000')

# show variables
vdif_range = vdif_max - vdif_min
ic_range = ic_max - ic_min
splot "resistor.curve.dat" using 2:3:4 title "RESISTOR", \
	"transistor.load.dat" using 2:3:5 with pm3d at b title "VB-VC", \
	"transistor.load.dat" using 2:3:4 title "TRANSISTOR"

# fancy colors: ((($5 - vdif_min)/ vdif_range)*(ic_range)+ic_min) 
pause -1 "Press Return"

