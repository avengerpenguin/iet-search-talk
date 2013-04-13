default: pdf

clean:
	rm -f *.log *.aux *.pdf *.out *.nav *.dvi *.toc *.dot *.vrb *.snm bbc_search-dot2tex-*

bbc_search.pdf:
	pdflatex --shell-escape bbc_search.tex

pdf: bbc_search.pdf

show: bbc_search.pdf
	xpdf -remote talk bbc_search.pdf -raise
