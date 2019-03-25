.PHONY: run nuke

main: main.scm
	csc -o main main.scm

run: main
	./main

nuke:
	rm -f main
