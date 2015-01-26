# configure the next two lines
TEXFILE=seamless-intro

DATE=$(shell date +'%H%M.%d.%m.%Y')

all:
	touch $(TEXFILE).ind
	pdflatex -file-line-error -halt-on-error $(TEXFILE)
	makeindex $(TEXFILE)
	bibtex $(TEXFILE).aux
	pdflatex -file-line-error -halt-on-error $(TEXFILE)
	pdflatex -file-line-error -halt-on-error $(TEXFILE)

usedvi:
	touch $(TEXFILE).ind
	latex $(TEXFILE)
	makeindex $(TEXFILE)
	bibtex $(TEXFILE).aux
	latex $(TEXFILE)
	latex $(TEXFILE)
	dvips -P cmz -t letter -o $(TEXFILE).ps $(TEXFILE).dvi
	ps2pdf $(TEXFILE).ps $(TEXFILE).pdf

publish:
	cp $(TEXFILE).pdf release/$(TEXFILE)_$(DATE).pdf

draft:
	cp $(TEXFILE).pdf release/$(TEXFILE)_draft_$(DATE).pdf

handout:
	pdflatex $(TEXFILE)-2perpage
	cp $(TEXFILE)-2perpage.pdf release/$(TEXFILE)-2perpage_$(DATE).pdf

clean:
	rm -f *.aux *.blg *.bbl *.dvi *.log *.nav *.snm

clobber: clean
	rm -f $(TEXFILE).ps $(TEXFILE).pdf $(TEXFILE).ilg $(TEXFILE).out $(TEXFILE).toc $(TEXFILE).idx $(TEXFILE).ind

FORCE:
