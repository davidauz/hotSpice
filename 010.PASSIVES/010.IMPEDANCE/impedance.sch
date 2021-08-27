v 20130925 2
T 11900 82600 9 10 1 0 0 0 8
	Z=R+iX  (Ω)

Z = IMPEDANCE (in OHM Ω)
R = RESISTANCE (Ω, the real part of impedance)
i = the imaginary number
X = REACTANCE (Ω)


B 12000 84400 1500 400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
L 12000 84600 11400 84600 3 0 0 0 -1 -1
L 13500 84600 14100 84600 3 0 0 0 -1 -1
T 12600 84500 9 20 1 0 0 0 1
Z
C 9700 81100 1 0 0 resistor-1.sym
{
T 10000 81500 5 10 0 0 0 0 1
device=RESISTOR
T 9900 81400 5 10 0 1 0 0 1
refdes=R?
}
C 10600 81100 1 0 0 inductor-1.sym
{
T 10800 81600 5 10 0 0 0 0 1
device=INDUCTOR
T 10800 81400 5 10 0 1 0 0 1
refdes=L?
T 10800 81800 5 10 0 0 0 0 1
symversion=0.1
}
C 13600 81100 1 0 0 resistor-1.sym
{
T 13900 81500 5 10 0 0 0 0 1
device=RESISTOR
T 13800 81400 5 10 0 1 0 0 1
refdes=R?
}
C 14500 81000 1 0 0 capacitor-1.sym
{
T 14700 81700 5 10 0 0 0 0 1
device=CAPACITOR
T 14700 81500 5 10 0 1 0 0 1
refdes=C?
T 14700 81900 5 10 0 0 0 0 1
symversion=0.1
}
N 9700 81200 9300 81200 4
N 11500 81200 12000 81200 4
N 13600 81200 13200 81200 4
N 15400 81200 15900 81200 4
T 10500 81300 9 20 1 0 0 0 1
Z
T 14500 81300 9 20 1 0 0 0 1
Z
T 13600 81900 9 10 1 0 0 0 4
Capacitive REACTANCE is negative
(resists change in voltage)

	Xc=-iX
T 9400 81900 9 10 1 0 0 0 4
Inductive REACTANCE is positive
(resists change in current)

	Xl=iX
T 9800 80200 9 10 1 0 0 0 3
Xl = ωL = 2πfL
L is INDUCTANCE in Henry
f is frequency
T 13400 80200 9 10 1 0 0 0 3
Xc = (ω*C)^-1 = (2πfC)^-1

C is CAPACITANCE in Farad
T 11300 78100 9 10 1 0 0 0 5
Y = 1/Z = G + iB [S = Siemens or MHO (inverse of OHM)]

Y = ADMITTANCE [S]
G = CONDUCTANCE [S]
B = SUSCEPTANCE [S]
B 8000 77100 10000 8600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
