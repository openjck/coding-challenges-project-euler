SOURCES = $(shell find . -type f -name '*.java')
CLASSES = $(patsubst %.java,%.class,$(SOURCES))

.PHONY: default run clean

default: $(CLASSES)

%.class: %.java
	javac $<

run: $(CLASSES)
	java Main

clean:
	find . -type f -name '*.class' -delete
