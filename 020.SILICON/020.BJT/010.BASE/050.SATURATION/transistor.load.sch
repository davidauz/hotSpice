v 20130925 2
C 59300 50900 1 0 0 npn-3.sym
{
T 60200 51400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 60200 51400 5 10 1 1 0 0 1
refdes=Q1
T 59300 50900 5 10 0 0 0 0 1
model-name=generic
T 59300 50900 5 10 0 0 0 0 1
model=npn
}
N 57800 49200 61200 49200 4
{
T 60600 49000 5 10 1 1 0 0 1
netname=0
}
N 61200 49200 61200 50800 4
C 60900 50800 1 0 0 vpulse-1.sym
{
T 61600 51450 5 10 1 1 0 0 1
refdes=vce
T 61600 51650 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 60200 52850 5 10 0 2 0 0 1
value=DC 10V
}
C 58100 50700 1 180 0 vdc-1.sym
{
T 58200 50150 5 10 1 1 0 0 1
refdes=ib
T 57400 49850 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 57000 50100 5 10 1 1 0 0 1
value=10mA
}
N 61200 52000 61200 53900 4
N 57800 49500 57800 49200 4
N 59900 49200 59900 50900 4
N 61200 53900 59900 53900 4
{
T 60500 54000 5 10 1 1 0 0 1
netname=c
}
N 57800 50700 57800 51400 4
C 59800 53400 1 270 0 resistor-2.sym
{
T 60150 53000 5 10 0 0 270 0 1
device=RESISTOR
T 59400 52900 5 10 1 1 0 0 1
value=5
T 60100 52900 5 10 1 1 0 0 1
refdes=RL
}
N 59900 53400 59900 53900 4
N 59900 51900 59900 52500 4
N 59900 52100 60300 52300 4
{
T 60300 52300 5 10 1 1 0 0 1
netname=Vc
}
C 58300 51300 1 0 0 resistor-2.sym
{
T 58700 51650 5 10 0 0 0 0 1
device=RESISTOR
T 58900 51200 5 10 1 1 180 0 1
value=5000
T 58800 51700 5 10 1 1 180 0 1
refdes=R1
}
N 57800 51400 58300 51400 4
N 59200 51400 59300 51400 4
N 59200 51400 59100 51800 4
{
T 59200 51800 5 10 1 1 0 0 1
netname=Vb
}
T 51300 50000 9 10 1 0 0 0 25
This circuit is copied from the one for the transistor characteristic 
curve done in 2D and in 3D.
That was without any load, and for a purpose: it had to show 
how the transistor itself limited the current.
In all books where there is a BJT characteristic curve shown, 
there is some sort of "ghost" region where the author slaps a 
"saturation zone" comment.
I can live with the interdition zone at the bottom: after all when no 
current is flowing through the base, it looks natural that the BJT is 
switched off.
But I could never wrap my head around the ghost saturation region.
Come on, a plot is supposed to give a value for every combination 
of the values in the domain, there should be no place for points
ABOVE a curve.
Why a ghost triangle above the values?  It makes no sense.
However, let's start from the beginning.   In saturation 
mode the current is supposed to "flow freely" as in a closed switch, but!  
There is a limit!  The limit is the load applied to the BJT.
Actually the "current flows freely" mentioned above should be
"current flows freely up to the limit set by the load" instead. 
As a definition of saturation this makes more sense to me than the 
usual one in the books: "when in a circuit the collector current cannot 
be increased more even if the base current increases."
In the plot the BJT characteristic curve bends under the load curve, 
thus showing where exactly is the saturation region.
T 62500 47600 9 10 1 0 0 0 20
In the plot there is the resistor plane as seen before and the
BJT characteristic curve WITH A LOAD, drawn together.  
There is a heatmap of the Vc - Vb too.
In the plot it is clear that there is a region where the transistor
is not saturated: it is the slope where the heatmap is blank.
That is where the transistor is acting as an amplifier: the
active region.
Then there is a much larger region where the BJT curve follows
closely the resistor plane.
BINGO!  That must be the saturation region.
The heatmap shows where both the junctions in the BJT are 
forward biased.
That's to say, where the transistor is saturated we have 

Vb > Ve (because Ve is at ground)   AND 
Vb > Vc (because their difference, shown as color in the
                heatmap, is positive).

SCORE!  Just keep clear from the blank region in the heatmap 
and you'll have a guaranteed saturated BJT.
C 62800 54400 1 0 0 spice-directive-1.sym
{
T 62900 54700 5 10 0 1 0 0 1
device=directive
T 62900 54800 5 10 1 1 0 0 1
refdes=A1
T 62800 52100 5 10 1 1 0 0 12
value=.options savecurrents
.print DC @q1[ib] @q1[ic] vb-vc
.control
set noaskquit
set color0=rgb:f/f/f
set color1=rgb:0/0/0
save all @q1[ib] @q1[ic] vb-vc
dc vce -1 10v 0.2 ib 0 50ma 1ma
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 51300 47800 9 10 1 0 0 0 10
For a transistor to be in saturation, the base-emitter junction
and the base-collector junction must be both forward biased.
This means that there is some current flowing from the base 
through the emitter (a normal thing) AND from the base through 
the collector (not quite normal).
Thus, the base voltage has to be greater of the emitter voltage:
Vb > Ve
and the base voltage has to be greater than the collector voltage:
Vb > Vc

