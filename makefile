default: pdf

clean:
	rm -f *.log *.aux *.pdf *.out *.nav *.dvi *.toc *.dot *.vrb *.snm bbc_search-dot2tex-*

bbc_search.pdf:
	pdflatex --shell-escape bbc_search.tex

bbc_search_notes.pdf:
	pdflatex --shell-escape -jobname bbc_search_notes_small "\PassOptionsToClass{handout,notes=only}{beamer}\input{bbc_search}"
	pdfnup --no-landscape --a4paper --keepinfo --nup 1x1 --frame true \
	    --outfile bbc_search_notes.pdf bbc_search_notes_small.pdf

pdf: bbc_search.pdf

notes: bbc_search_notes.pdf

show: bbc_search.pdf
	xpdf -remote talk bbc_search.pdf -raise
