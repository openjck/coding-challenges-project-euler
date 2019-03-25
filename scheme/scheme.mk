SOURCES = $(shell find . -type f -name '*.scm')

.PHONY: default run clean

default: main

main: $(SOURCES)
	csc -o main main.scm

run: main
	./main

clean:
	rm -f main
