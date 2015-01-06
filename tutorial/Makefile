# configure the next three lines
SPEC=Numerical_Integration
SPECHOME=~/research/seamless/tutorial
SEAMLESSHOME=~/research/seamless

DATE=$(shell date +'%H%M.%d.%m.%Y')

all:
	touch $(SPEC).ind
	pdflatex -file-line-error -halt-on-error $(SPEC)
	makeindex $(SPEC)
	bibtex $(SPEC).aux
	pdflatex -file-line-error -halt-on-error $(SPEC)
	pdflatex -file-line-error -halt-on-error $(SPEC)

usedvi:
	touch $(SPEC).ind
	latex $(SPEC)
	makeindex $(SPEC)
	bibtex $(SPEC).aux
	latex $(SPEC)
	latex $(SPEC)
	dvips -P cmz -t letter -o $(SPEC).ps $(SPEC).dvi
	ps2pdf $(SPEC).ps $(SPEC).pdf

publish:
	cp $(SPEC).pdf release/$(SPEC)_release_$(DATE).pdf

draft:
	cp $(SPEC).pdf release/$(SPEC)_draft_$(DATE).pdf

clean:
	rm -f *.aux *.blg *.bbl *.dvi *.log

clobber: clean
	rm -f $(SPEC).ps $(SPEC).pdf $(SPEC).ilg $(SPEC).out $(SPEC).toc $(SPEC).idx $(SPEC).ind

TESTOPTS=-no-chpl-home-warn -compopts '-M $(SPECHOME)/src -M $(SPECHOME)/helper'
test: FORCE
	cd test && start_test $(TESTOPTS)

SPECHELPER_DIR= ./helper
spechelpers: FORCE
	rm -rf $(SPECHELPER_DIR)
	$(SEAMLESSHOME)/util/extract_helpers -o $(SPECHELPER_DIR) $(SPECHOME)/Rectangle_Integration.tex

SPECSOURCE_DIR = ./src
specsources: FORCE
	rm -rf $(SPECSOURCE_DIR)
	$(SEAMLESSHOME)/util/extract_sources -o $(SPECSOURCE_DIR) $(SPECHOME)/Rectangle_Integration.tex

SPECTEST_DIR = ./test
spectests: FORCE
	rm -rf $(SPECTEST_DIR)
	$(SEAMLESSHOME)/util/extract_tests -o $(SPECTEST_DIR) $(SPECHOME)/Rectangle_Integration.tex

FORCE:
