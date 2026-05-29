MS = SSC2026

RNW = $(MS).Rnw
TEX = $(MS).tex
PDF = $(MS).pdf
BIB = $(MS).bib

## allow colour changes in echo commands
## these must be exported so they are visible inside all rules,
## then used via $$.
export RED  := $(shell tput setaf 1)
export BLUE := $(shell tput setaf 4)
export BOLD := $(shell tput bold)
export NC   := $(shell tput sgr0)  # no colour, no style

## Prevent make from auto-deleting intermediate %.pdf/%.tex when building %.open.
.PRECIOUS: %.pdf %.tex

## ------------------------------------------------------------
## Build rules
## ------------------------------------------------------------

.PHONY: all open

all: $(PDF)

open: $(MS).open

## Open the PDF (macOS).
%.open: %.pdf
	open "$<"

## Rnw -> tex (knitr), retained as the GAEM analogue.
DATA_DEPS  := $(subst :,\:,$(wildcard data/* code/*))
FIG_DEPS   := $(subst :,\:,$(wildcard figures/* photos/* images/*))
BIB_DEPS   := $(subst :,\:,$(wildcard $(BIB)))
KNITR_DIRS := cache figure

COMMON_AUX_EXTS := aux tikz out log blg toc vrb fls fdb_latexmk
BEAMER_AUX_EXTS := nav snm synctex.gz
BIB_AUX_EXTS    := bbl bcf run.xml ent
GENERATED_FILES := $(TEX) $(PDF) \
	$(foreach ext,$(COMMON_AUX_EXTS) $(BEAMER_AUX_EXTS) $(BIB_AUX_EXTS),$(MS).$(ext))

%.tex: %.Rnw $(DATA_DEPS)
	@echo
	@echo $${BLUE}${MS}$${NC}
	@echo
	@echo $${BOLD}$${RED}Rnw to tex ...$${NC}
	Rscript -e "library(knitr); knit('$*.Rnw')"

## tex -> pdf (latexmk).
LATEXMK      := latexmk
LATEXMKFLAGS := -pdf -bibtex -silent -use-make

%.pdf: %.tex $(BIB_DEPS) $(FIG_DEPS) FORCE
	@echo $${BOLD}$${RED}tex to pdf ...$${NC}
	$(LATEXMK) $(LATEXMKFLAGS) "$*"
	@echo $${BOLD}$${BLUE}`date`$${NC}

## ------------------------------------------------------------
## Cleaning (stem-specific, cautious)
##
## Examples:
##   make SSC2026.clean
##   make SSC2026.fresh
##   make fresh            # same as: make $(MS).fresh
##
## No target ever deletes all PDFs in the directory.
## ------------------------------------------------------------

.PHONY: clean veryclean superclean fresh FORCE
FORCE:
	@:

## Default wrappers act on $(MS).
clean:      $(MS).clean
veryclean:  $(MS).veryclean
superclean: $(MS).superclean
fresh:      $(MS).fresh

## Level 1: common LaTeX aux files and latexmk state.
%.clean: FORCE
	@rm -f $(foreach ext,$(COMMON_AUX_EXTS),"$*.$(ext)")

## Level 2: beamer / tikz extras (still no PDFs).
%.veryclean: %.clean FORCE
	@rm -f $(foreach ext,$(BEAMER_AUX_EXTS),"$*.$(ext)") "$*-tikzDictionary"

## Level 3: bibliography output (still no PDFs).
%.superclean: %.veryclean FORCE
	@rm -f $(foreach ext,$(BIB_AUX_EXTS),"$*.$(ext)")

## Level 4: fresh build.
## - removes only this stem's PDF
## - removes this stem's .tex only if $*.Rnw exists (i.e., .tex is generated)
## - removes knitr-generated cache/figure directories for this talk
%.fresh: %.superclean FORCE
	@rm -f "$*.pdf"
	@if [ -f "$*.Rnw" ]; then rm -f "$*.tex"; fi
	@rm -rf $(KNITR_DIRS)
