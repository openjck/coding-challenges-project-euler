# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.java)
OUT = $(patsubst %.java,%.class,$(SRC))

.PHONY: all clean

all: $(OUT)

%.class: %.java
	javac $<

clean:
	rm -f *.class
