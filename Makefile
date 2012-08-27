all:
	make pdf &> /dev/null
	make pdf &> /dev/null
	make pdf

clear:
	rm -f lout.li
	rm -f tmp*

mydef:
	iconv -f UTF8 -t LATIN1 include/mydef.utf8 > include/mydef

pdf:
	make mydef
	iconv -f UTF8 -t LATIN1 test.lout > tmp.lout
	lout tmp.lout > tmp.ps
	ps2pdf tmp.ps test.pdf

v:
	mupdf test.pdf
