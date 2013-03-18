all: pypy-intro.pdf

pypy-intro.pdf: pypy-intro.tex Pypy_logo.png
	latexmk -pdf $<

Pypy_logo.png:
	test -d Pypy_logo.png || wget http://upload.wikimedia.org/wikipedia/commons/b/b0/Pypy_logo.png

clean:
	rm -f *.aux *.fdb_latexmk *.pdf *.log *.nav *.out *.toc *.snm
