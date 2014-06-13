# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.hs)
OUT = $(patsubst %.hs,%,$(SRC))

.PHONY: all run clean nuke

all: $(OUT)

%: %.hs
	ghc -i../modules $< -o $@

run: $(OUT)
	./$(OUT)

clean:
	rm -f *.hi *.o

nuke: clean
	rm -f $(OUT)
