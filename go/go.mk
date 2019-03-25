SOURCES = $(shell find . -type f -name '*.go')

.PHONY: default run clean

default: main

main: $(SOURCES)
	go build -o main main.go

run: main
	./main

clean:
	rm -f main
