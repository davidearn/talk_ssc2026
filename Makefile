TALK = SSC2026

all: $(TALK).pdf

$(TALK).tex: $(TALK).Rnw
	Rscript -e "library(knitr); knit('$(TALK).Rnw')"

$(TALK).pdf: $(TALK).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(TALK).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(TALK).tex

clean:
	rm -f *.{aux,bbl,blg,log,nav,out,snm,toc,vrb}

veryclean: clean
	rm -f $(TALK).tex

fresh: veryclean
	rm -f $(TALK).pdf
	rm -rf cache figure
