SOURCES = $(shell find . -type f -name '*.java')
CLASSES = $(patsubst %.java,%.class,$(SOURCES))
CLASSPATH = .:../../packages

.PHONY: default run clean

default: $(CLASSES)

%.class: %.java
	javac -classpath $(CLASSPATH) $<

run: $(CLASSES)
	java -classpath $(CLASSPATH) Main

clean:
	find . -type f -name '*.class' -exec rm -rf '{}' \;
