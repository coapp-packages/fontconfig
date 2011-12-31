# From src/Makefile.am
	(echo EXPORTS; \
	(cat ../fontconfig/fontconfig.h fcdeprecate.h ../fontconfig/fcprivate.h ../fontconfig/fcfreetype.h) | \
 	grep '^Fc[^ ]* *(' | sed -e 's/ *(.*$//' -e 's/^/	/' | \
	sort;) > fontconfig.def
