# configure the next two lines
SEAMLESSHOME=~/research/seamless
FRAMEWORKHOME=~/research/seamless-framework

framework: FORCE
	cd framework && $(MAKE) clobber && cp -p * ${FRAMEWORKHOME}

FORCE:
