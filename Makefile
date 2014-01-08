all: committee

committee: self.bbl own.bbl ref.bbl
	pdflatex committee.tex

self.bbl: self.aux
	bibtex self

own.bbl: own.aux
	bibtex own

ref.bbl: ref.aux
	bibtex ref

%.aux:
	pdflatex committee.tex

clean:
	rm -rf self.aux own.aux ref.aux *.bbl

purge:
	rm -rf committee.pdf *.dvi *.aux *.blg *.bbl *.log

