all: anchors.pdf

anchors.pdf: anchors.tex anchors.bib textbook.sty
	pdflatex -interaction batchmode anchors.tex
	bibtex anchors.aux
	pdflatex -interaction batchmode anchors.tex
	pdflatex -interaction batchmode anchors.tex

.PHONY: clean

clean:
	rm *.bbl *.blg *.log *.out *.aux *.pdf
