# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.hs)
OUT = $(patsubst %.hs,%,$(SRC))

.PHONY: all clean nuke

all: $(OUT)

%: %.hs
	ghc $< -o $@

clean:
	rm -f *.hi *.o

nuke: clean
	rm -f $(OUT)
