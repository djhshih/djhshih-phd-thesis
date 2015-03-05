all: thesis

thesis: self.bbl ref.bbl
	pdflatex thesis.tex
	makeglossaries thesis
	pdflatex thesis.tex

self.bbl: self.aux
	bibtex self

ref.bbl: ref.aux
	bibtex ref

%.aux:
	pdflatex thesis.tex

clean:
	rm -rf self.aux ref.aux *.bbl

purge:
	rm -rf thesis.pdf *.dvi *.aux *.blg *.bbl *.log

