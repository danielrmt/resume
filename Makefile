TEX=$(shell grep -l documentclass *.tex)
PDF:=$(patsubst %.tex,%.pdf,$(TEX))

.PHONY: all clean

all: $(PDF)

%.pdf: %.tex
	latexmk -xelatex $<
	latexmk -c

clean:
	latexmk -c
