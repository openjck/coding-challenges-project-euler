SRC = $(wildcard problem-*.hs)
OUT = $(subst .hs,,$(SRC))

.PHONY: main run clean nuke

main:
	ghc -i../modules --make $(SRC)

run: main
	./$(OUT)

clean:
	rm -f *.hi *.o

nuke: clean
	rm -f $(OUT)
