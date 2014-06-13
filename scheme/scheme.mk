# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.scm)
OUT = $(patsubst %.scm,%,$(SRC))

.PHONY: all run nuke

all: $(OUT)

run: $(OUT)
	./$(OUT)

%: %.scm
	csc $< -o $@

nuke:
	rm -f $(OUT)
