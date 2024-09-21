
MODULES= rl

all: def test testCamera2D

test: $(MODULES:=.k) Test.k
	obc -C -lm -lraylib -o $@.out $(MODULES:=.k) Test.mod rl_stubs.c

testCamera2D: $(MODULES:=.k) TestCamera2D.k
	obc -C -lm -lraylib -o $@.out $(MODULES:=.k) TestCamera2D.mod rl_stubs.c

%.k: %.mod
	obc -c $<

def: rl.k
	obb rl > rl.def

clean:
	rm -f *.k *.out
