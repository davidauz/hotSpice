
all: net.net test-not.net

not.SUBCKT.cir: not.SUBCKT.sch
	gnetlist -g spice-sdb -o not.SUBCKT.cir not.SUBCKT.sch
	cp not.SUBCKT.cir ${HOTSPICE}

test-not.net: test-not.sch not.SUBCKT.cir
	gnetlist -g spice-sdb -o test-not.net test-not.sch

net.net: NOT.gate.sch
	gnetlist -g spice-sdb -o net.net NOT.gate.sch

clean:
	rm -f *~ *net *cir \#* 

prova:
	@echo PIPPE
	@echo 

