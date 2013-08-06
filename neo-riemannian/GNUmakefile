LYS = $(wildcard *.ly)
PNGS = $(LYS:.ly=.preview.png)

all: $(PNGS)

%.preview.png: %.ly
	lilypond --png -dno-print-pages -dpreview $<
	rm *.eps *.midi

.PHONY: clean
clean:
	@-rm *.eps *.midi *.pdf *.png 2>/dev/null
