
MODULES= rl

all: test def

test: $(MODULES:=.k) Test.k
	obc -C -lm -lraylib -o $@.out $(MODULES:=.k) Test.mod rl_stubs.c

%.k: %.mod
	obc -c $<

def: rl.k
	obb rl > rl.def

clean:
	rm -f *.k *.out
