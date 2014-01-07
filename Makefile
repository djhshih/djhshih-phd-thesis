all: committee

committee: own.bbl ref.bbl
	pdflatex committee.tex

own.bbl: own.aux
	bibtex own

ref.bbl: ref.aux
	bibtex ref

own.aux:
	pdflatex committee.tex

ref.aux:
	pdflatex committee.tex

clean:
	rm -rf committee.pdf *.dvi *.aux *.blg *.bbl *.log
