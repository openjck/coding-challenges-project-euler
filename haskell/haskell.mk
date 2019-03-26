SOURCES = $(shell find . -type f -name '*.hs')

# https://stackoverflow.com/a/18137056/4297741
MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
DIRNAME := $(notdir $(patsubst %/,%,$(dir $(MAKEFILE_PATH))))

.PHONY: default run clean

default: main

main: $(SOURCES)
	ghc -i../../modules/$(DIRNAME) main.hs

run: main
	./main

clean:
	find . -type f -name '*.hi' -exec rm -rf '{}' \;
	find . -type f -name '*.o' -exec rm -rf '{}' \;
	rm -f main
