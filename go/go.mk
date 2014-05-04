# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.go)
OUT = $(patsubst %.go,%,$(SRC))

.PHONY: all nuke

all: $(OUT)

%: %.go
	go build -o $@ $<

nuke:
	rm -f $(OUT)
