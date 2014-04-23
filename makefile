HTMLDIR=./html

all:
	pandoc -i ./interpretingPhylogeniesCrete2014.md -o ${HTMLDIR}/interpretingPhylogeniesCrete2014.html
	pandoc -i ./usingNJplot.md -o ${HTMLDIR}/usingNJplot.html
