SOURCES = $(shell find . -type f -name '*.hs')

.PHONY: default run clean

default: main

main: $(SOURCES)
	ghc -i../../modules main.hs

run: main
	./main

clean:
	find . -type f -name '*.hi' -exec rm -rf '{}' \;
	find . -type f -name '*.o' -exec rm -rf '{}' \;
	rm -f main
