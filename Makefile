ROOT = trabalho
LATEX = latex

all:
	$(LATEX) $(ROOT)
	bibtex $(ROOT)
	bibtex $(ROOT)
	$(LATEX) $(ROOT)
	$(LATEX) $(ROOT)
	dvipdf -o$(ROOT).pdf $(ROOT).dvi

clean:
	rm -rf *~ *.aux *.dvi *.bbl *.blg *.log *.pdf *.lot *.lof *.toc
