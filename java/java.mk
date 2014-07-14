# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.java)
OUT = $(patsubst %.java,%.class,$(SRC))
CLASS = $(patsubst %.java,%,$(SRC))
CLASSPATH = .:../packages

.PHONY: all run clean

all: $(OUT)

run: $(OUT)
	java -classpath $(CLASSPATH) $(CLASS)

%.class: %.java
	javac -classpath $(CLASSPATH) $<

nuke:
	rm -f *.class
