LATEX = pdflatex
BIBTEX = bibtex

MAIN = proposal
FILES = $(wildcard *.tex)

OUT = $(MAIN)

$(OUT).pdf: $(FILES)
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

count:
	detex $(MAIN) | wc -w

clean:
	rm $(OUT).pdf
