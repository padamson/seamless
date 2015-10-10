# The part of the project contained in this directory adds the seamless capability
# to the TeXstudio program.  The makefile does two things:
# 1. copies all of the files in the 'src' directory into the TeXstudio source dir
# 2. runs the BUILD.sh script (compiles TeXstudio and copies it into Applications)
#
# configure the next two lines
SEAMLESS_HOME=~/research/seamless
TEXSTUDIO_HOME=~/Developer/texstudio2.9.4

all:
	cp -Rp src/ ${TEXSTUDIO_HOME}/; cd ${TEXSTUDIO_HOME}; sh ${TEXSTUDIO_HOME}/BUILD.sh

FORCE:
