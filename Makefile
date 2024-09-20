
MODULES= rl

all: test 

test: $(MODULES:=.k) Test.k
	obc -C -lm -lraylib -o $@.out $(MODULES:=.k) Test.mod rl_stubs.c

%.k: %.mod
	obc -c $<

clean:
	rm -f *.k *.out
