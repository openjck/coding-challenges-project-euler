.PHONY: run nuke

main: main.go
	go build -o main main.go

run: main
	./main

nuke:
	rm -f main
