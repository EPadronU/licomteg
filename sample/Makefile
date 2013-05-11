FILE_NAME=test

all:
	make mydef
	make compile
	make compile
	make pdf
	make clean

clean:
	rm -f lout.li
	rm -f ./-.ld
	rm -f $(FILE_NAME).ps

compile:
	iconv -f UTF8 -t LATIN1 $(FILE_NAME).lout | lout > $(FILE_NAME).ps

mydef:
	iconv -f UTF8 -t LATIN1 include/mydef.utf8 > include/mydef

pdf:
	ps2pdf $(FILE_NAME).ps $(FILE_NAME).pdf
