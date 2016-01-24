PDFLATEX = pdflatex -interaction=batchmode
BIBTEX   = bibtex
SH 		 = /bin/bash

# Originally intended to build everything into a separate directory, but
# neither pdflatex nor make support it in a robust manner.
SRCDIR = 'source'
TEXSRC = $(shell find $(SRCDIR) -type f -name '*.tex')
OUTPUT = $(patsubst source/%.tex,source/%.pdf,$(TEXSRC))

default : all

.PHONY: all
all: $(OUTPUT)
	@echo "Creating PDFs for files..."
	@echo $(TEXSRC)
	@echo "PDFs created at:"
	@echo $(OUTPUT)


source/%.pdf : source/%.tex
	# Perform build as a single command
	cd ./source && \
	$(PDFLATEX) $(notdir $<) && \
	$(PDFLATEX) $(notdir $<)

# # Make with `bibtex`.
# source/%.pdf : source/%.tex
# 	cd ./source && \
# 	$(PDFLATEX) $(notdir $<) && \
# 	$(BIBTEX) $(basename $(notdir $<)) && \
# 	$(PDFLATEX) $(notdir $<)


.PHONY: clean
clean :
	# remove all TeX-generated files in your local directory
	cd ./source && \
	rm -f -- *.aux *.bak *.bbl *.blg *.log *.out *.toc *.tdo _region.*

	# Remove the associated PDFs
	rm -f $(OUTPUT)