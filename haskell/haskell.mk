.PHONY: default run clean

default: main

main: main.hs
	ghc --make main.hs

run: main
	./main

clean:
	find . -type f -name '*.hi' -delete
	find . -type f -name '*.o' -delete
	rm -f main
