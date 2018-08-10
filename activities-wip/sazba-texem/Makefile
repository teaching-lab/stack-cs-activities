.PHONY: all clean
all: print-slips.html print-docs.pdf $(patsubst %.tex,%.pdf,$(wildcard *.tex))

clean:
	-rm -v *.aux *.dvi *.log *.out *.pdf *.html

%.pdf: %.tex
	@engine=$$(perl -pe 's/^([^-]+)-.*/$$1/g' <<< '$<') && echo "### $${engine}" '$<' && "$${engine}" '$<'
	for i in *.dvi; do dvipdfmx "$${i}"; done

print-docs.pdf: $(patsubst %.tex,%.pdf,$(wildcard *.tex))
	pdftk $^ cat output $@

print-slips.html: $(wildcard *.tex)
	./contacete-and-number.pl $^ | pygmentize -l latex -f html -O full,classprefix=pygments_,nobackground=True,encoding=UTF-8 -o "$@"
