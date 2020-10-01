.PHONY: default run clean

default: main

main: main.scm
	csc -o main main.scm

run: main
	./main

clean:
	rm -f main
