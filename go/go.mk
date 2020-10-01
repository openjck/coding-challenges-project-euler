.PHONY: default run clean

default: main

main: main.go
	go build -o main main.go

run: main
	./main

clean:
	rm -f main
