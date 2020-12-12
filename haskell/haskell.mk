.PHONY: default run clean format

default: main

main: main.hs
	ghc --make main.hs

run: main
	./main

clean:
	find . -type f -name '*.hi' -delete
	find . -type f -name '*.o' -delete
	rm -f main

format:
	ormolu --mode inplace $(shell find . -name '*.hs')
