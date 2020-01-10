
all: ../sr.SUBCKT.mod net.net


../sr.SUBCKT.mod: sr.SUBCKT.sch
	gnetlist -g spice-sdb -o ../sr.SUBCKT.mod sr.SUBCKT.sch

net.net: circuit.sch
	gnetlist -g spice-sdb -o net.net circuit.sch

clean:
	rm -f *~ *net *mod \#* 

