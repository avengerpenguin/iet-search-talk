default: pdf

clean:
	rm -f *.log *.aux *.pdf *.out *.nav *.dvi *.toc

bbc_search.pdf:
	pdflatex bbc_search.tex

pdf: bbc_search.pdf

show: bbc_search.pdf
	xpdf -remote talk bbc_search.pdf -raise
