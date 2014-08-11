# Compile all out-of-date source files
# http://stackoverflow.com/a/2706067

SRC = $(wildcard *.java)
OUT = $(patsubst %.java,%.class,$(SRC))
CLASS = $(patsubst %.java,%,$(SRC))
CLASSPATH = .:../packages

.PHONY: all run nuke

all: $(OUT)

%.class: %.java
	javac -classpath $(CLASSPATH) $<

run: $(OUT)
	java -classpath $(CLASSPATH) $(CLASS)

nuke:
	rm -f *.class
