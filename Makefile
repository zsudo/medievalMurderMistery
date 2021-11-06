# Zlatan Jakupovic
#
# Makefile for typesetting LaTeX Murder Mystery
#

.PHONY= all clean help

SHELL = /bin/sh

BOOK = book
FIGURES_PDF =
FIGURES_PNG =
TEX = xelatex

help:
	@echo 'Makefile for Medival Murder Mystery'
	@echo ''
	@echo 'That is all'

all: ${BOOK}.tex
	$(TEX) book.tex



watch:
     @while true: do;

clean:
	rm -f *.pdf *.ps *.aux *.log *.out *.lol *.xdv
	rm -f *.idx *.ind *.ilg *.toc *.dvi
