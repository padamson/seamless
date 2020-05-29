Seamlessly develop Chapel code. Requirements, documentation, source code, 
and test suite are all contained in your LaTeX document. Encourages 
good software engineering practices, including a test-driven
development approach.

The `tutorial` directory contains a LaTeX package that serves two
purposes. The first chapter describes the "seamless" approach, including background
on test-driven development and literate programming. The remaining chapters are
an example of the seamless approach in action through development of code to solve the
[Rosetta Code numerical integration task](http://rosettacode.org/wiki/Numerical_integration)
in the Chapel programming language.

The `util` directory contains scripts for extracting test and source code from
your LaTeX document when using the seamless approach.

Currently the "usage" of the seamless package is to adapt the tutorial. Future plans
include a script to generate a blank seamless LaTeX document. I'm open to suggestions
on how to implement features that would be useful.
