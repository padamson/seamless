test: FORCE
	cd test && testseamless

SPECHELPER_DIR= ./helper
spechelpers: FORCE
	rm -rf $(SPECHELPER_DIR)
	./util/extract_helpers -o $(SPECHELPER_DIR) spec/Numerical_Integration.tex

SPECSOURCE_DIR = ./src
specsources: FORCE
	rm -rf $(SPECSOURCE_DIR)
	./util/extract_sources -o $(SPECSOURCE_DIR) spec/Numerical_Integration.tex

SPECTEST_DIR = ./test
spectests: FORCE
	rm -rf $(SPECTEST_DIR)
	./util/extract_tests -o $(SPECTEST_DIR) spec/Numerical_Integration.tex
FORCE:
