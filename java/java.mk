# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.java)
OUT = $(patsubst %.java,%.class,$(SRC))
CLASS = $(patsubst %.java,%,$(SRC))

.PHONY: all run clean

all: $(OUT)

run: $(OUT)
	java $(CLASS)

%.class: %.java
	javac $<

clean:
	rm -f *.class
