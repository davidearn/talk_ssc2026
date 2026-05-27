TALK = SSC2026
##LATEXMODE = -interaction=nonstopmode -halt-on-error
LATEXMODE = -interaction=batchmode -halt-on-error

all: $(TALK).pdf

$(TALK).tex: $(TALK).Rnw
	Rscript -e "library(knitr); knit('$(TALK).Rnw')"

$(TALK).pdf: $(TALK).tex $(TALK).bib
	pdflatex $(LATEXMODE) $(TALK).tex
	bibtex $(TALK)
	pdflatex $(LATEXMODE) $(TALK).tex
	pdflatex $(LATEXMODE) $(TALK).tex

$(TALK).open: $(TALK).tex
	pdflatex $(LATEXMODE) $(TALK).tex
	open $(TALK).pdf

clean:
	rm -f *.{aux,bbl,blg,log,nav,out,snm,toc,vrb}

veryclean: clean
	rm -f $(TALK).tex

fresh: veryclean
	rm -f $(TALK).pdf
	rm -rf cache figure
