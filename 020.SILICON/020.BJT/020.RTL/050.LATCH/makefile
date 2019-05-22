
all: net.net test-latch.net

not.SUBCKT.cir:
	cp ${HOTSPICE}/not.SUBCKT.cir .

latch.SUBCKT.cir: latch.SUBCKT.sch not.SUBCKT.cir
	gnetlist -g spice-sdb -o latch.SUBCKT.cir latch.SUBCKT.sch

test-latch.net: test-latch.sch latch.SUBCKT.cir
	gnetlist -g spice-sdb -o test-latch.net test-latch.sch

net.net: circuit.sch
	gnetlist -g spice-sdb -o net.net circuit.sch

clean:
	rm -f *~ *net *cir \#* 

