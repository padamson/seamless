The "seamless" tutorial in this directory is a LaTeX package that serves two
purposes. The first chapter describes the seamless approach, including background
on test-driven development and literate programming. The remaining chapters are
an example of the seamless approach in action through development of code to solve the
[Rosetta Code numerical integration task](http://rosettacode.org/wiki/Numerical_integration)
in the Chapel programming language.

Dependencies and Prerequisites
------------------------------

Since the seamless approach is essentially a method to develop science code within a LaTeX
document, you must have a working [LaTeX system](http://latex-project.org/ftp.html). In order
to "follow along" with the tutorial, extracting the source code and running the tests, you will
need to clone [the Chapel repository](https://github.com/chapel-lang/chapel) and install it.
In addition to the Chapel compiler (`chpl`), we are currently using the `start_test` script 
in the `util` directory that comes with the Chapel repository to run the tests in the tutorial.

If you are new to LaTeX, you should go off and learn the basics before diving into the seamless
approach. Seamless introduces only a few custom LaTeX environments and commands, and they are
described in the tutorial. As long as you can write and compile a basic LaTeX document with numbered
equations, cross-references (labels and references), tables, figures, and common environments 
(e.g. enumerate, description), you should be fine. Some familiarity with the LaTeX 
listings and enumitem packages would be useful, too, since they are used in some of the 
environments defined by seamless.

LaTeX Package Contents
----------------------

The tutorial LaTeX package contains the following files:

* *Makefile*: supports `pdflatex` and `latex` to compile the LaTeX package into the tutorial
pdf; also has targets to make source code and tests from the LaTeX package and run the tests (usage of these
targets is described in the tutorial)
* *seamless.cls*: provides the `seamless` LaTeX document class which is a modification of the `book` class
* *seamless.sty*: provides several environments and commands used in the seamless approach (usage is described
in the tutorial)
* *Numerical_Integration.tex*: the main LaTeX document with includes for the remaining LaTeX files 
(see Organization.tex for details on the structure of the LaTeX package
* *chapel_listing.tex*: used with the LaTeX `listings` package to properly format Chapel code
* *references.bib*: contains bibliography entries for use by `bibtex`

Using the Tutorial
------------------

To make the PDF of the tutorial just type `make` at the commandline. Once you get to Chapter 4, Requirements,
you will probably want to follow along in the LaTeX source while you are reading the PDF. Or, better yet,
you can clear out the contents of Chapters 4-7 and recreate them (minus the `seamlessnote` environments).

Adapting the Tutorial
---------------------

To adapt the tutorial package to your own purposes, start by deciding what organization is 
appropriate for your application. Depending on the size of the project, you will likely need
much more structure. The purpose of this example is to merely demonstrate the approach of 
combining the requirements, specification, source code, and test suite into a single LaTeX document.
In no way is this example meant to represent a complete template for your document. In fact,
the example is purposely chosen to be a trivial task in order to avoid the perception that there
is a single template that is appropriate for all software applications. Your specification should
be tailored to your application.

You will want to copy the main LaTeX file, `Numerical_Integration.tex`, to 
something more appropriate (`Your_Application.tex`) and modify it to include only the tutorial files that
you want to adapt (probably `Organization.tex`, `Notation.tex`, and 
`Requirement_Traceability.tex`). You will probably want to start from scratch for other chapters of your package.

If you are writing a Chapel program, you shouldn't have to modify the `seamless.sty` file. 
If you are writing a program in a different language, you will need to modify it to accomodate
environments for test and source code. Also, you will need to provide a
file with definitions for the listings package as in `chapel_listing.tex`. Finally, as mentioned above,
automated testing for Chapel code is courtesy of the `start_test` script from the Chapel git repository,
so that script will need to be adapted to accomodate your particular programming language's compiler.
[Email me](mailto: paul.adamson.01@gmail.com), and I'll be happy to assist you with adapting seamless to
your needs.
