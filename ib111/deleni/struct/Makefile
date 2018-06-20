# Change content of this variable to match filename
TARGET = struct

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex
	pdflatex $^

clean:
	rm -rf $(TARGET).aux $(TARGET).log $(TARGET).out

pdfclean: clean
	rm -rf $(TARGET).pdf

.PHONY: clean pdfclean
