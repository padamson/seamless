Introduction
============

The Specification in this directory is meant to serve as an example of how a single
TeX document can be used to "seamlessly" develop the functional specification, 
technical specification, source code, and test suite for a Chapel application.
It also demonstrates a test driven design approach to developing Chapel code. 

Example Application
===================

To illustrate the approach, we will solve the 
[Rosetta Code numerical integration task](http://rosettacode.org/wiki/Numerical_integration)
in Chapel.

Example TeX Package Contents
----------------------------

The supplied example TeX package contains the following files:

* *Makefile*: self-explanatory; supports `pdflatex` and `latex`; does not generate source
code or test suite (see `Makefile` in root directory for that)
* *spec.cls*: provides the `spec` LaTeX document class which is a modification of the `book` class
* *Notation.tex*: describes format and prettyprinting for code and 
syntax
* *Purpose.tex*: the purpose of the specification document which is to provide the
functional specification, technical specification, source code, and test suite (not be 
confused with the scope of the document, which is to solve the Rosetta Code numerical
integration task)
* *Organization.tex*: shows how the example is organized
* *Scope.tex*: the scope of the specification document, which is to solve the Rosetta
Code numerical integration task (not be confused with the purpose of the document)
* *Functional_Requirements.tex*: functional requirements of the package (**not** the technical
specification)
* *Numerical_Integration.tex*: example technical spec, source code, and test suite
* *chapel_listing.tex*: used with the LaTeX `listings` package to properly format Chapel code
* *chapel_testing.tex*: Defines special environments for adding extra information about
code snippets which can be later extracted and used to generate test codes for automated testing.
During LaTeX compilation, the environments defined in this file throw away all text within the 
scope of the environment, with the exception of 'chapelprintoutput' which prints the output (and is
also extracted for testing purposes)
* *syntax_listing.tex*: used by the LaTeX `listings` package to format syntax
* *collect_syntax.pl*: Perl script that generates a `Syntax.tex` file (collected lexical and syntax
productions) which can be included in an Appendix
* *master.bib*: contains bibliography entries for use by `bibtex`

Adapting the Example Package
----------------------------

To adapt the example package to your own purposes, start by deciding what organization is 
appropriate for your application. Depending on the size of the project, you will likely need
much more structure. The purpose of this example is to merely demonstrate the approach of 
combining the requirements, specification, source code, and test suite into a single document.
In now way is this example meant to represent a complete template for your document. In fact,
the example is purposely chosen to be a trivial task in order to avoid the perception that there
is a single template that is appropriate for all software applications. Your specification should
be tailored to your application.

Once you have determined the organization of your document and written 
[a proper functional specification](http://www.joelonsoftware.com/articles/fog0000000036.html),
you can begin writing your combined technical specification/source code/test suite by 
renaming `Numerical_Integration.tex` appropriately (`Your_Application.tex`) and
changing the appropriate `\input` line in `spec.tex`. 

Environments Available in the Specification
===========================================

The following environments are available for use in the specification:

- *example*:
  Example ExotiMO programs, along with explanation text
  should be contained in the example environment.

- *note*:
  To make a note to future implementors of ExotiMO, or those
  who are interested in how ExotiMO is implemented, use the note
  environment.  

- *rationale*:
  To provide more explanation about a feature, use the rationale
  section.   

- *openissue*:
    Issues that we do not know how to handle.

- *future*:
    Issues or features that we have a story about, but which are not yet
  fully-designed or have not yet been implemented. 

Suggestions for Writing Your Specification
==========================================

- There should be example programs for every package concept
  and for every subsection.

- In explaining a feature, try to address everyone in your audience
  (e.g. the package developers as well as the black box users).
  Explain the syntax of
  the feature and any implementation details.  Also explain the
  impact of the feature and how it is used when piecing together
  an application.

- Italicize the term when you are defining it.
  Be sure to add it to the index.  You want as many things as possible in
  the index.  (See below for guidance on index term creation.)


Index Term Creation
-------------------

 - It is better to err on the side of too many entries; you can cull excessive
   entries later.

 - Double-billing is OK, (e.g. `\index{formal arguments}` and `\index{arguments!formal}`)

 - An acceptable exception is when these are visually close, so would be noisy
   (e.g. `\index{operator precedence}` and `\index{operators!precedence}`)
   In this case, the second form is preferred.

 - Global topics can appear at the top level; otherwise, they are qualified by
   the chapter name (or general topic).

