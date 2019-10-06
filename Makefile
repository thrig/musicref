.SUFFIXES: .lytex .tex .tex .pdf

.lytex.tex:
	lilypond-book --pdf --format=latex ${.IMPSRC}

.tex.pdf:
	pdflatex ${.IMPSRC}
	bibtex ${.PREFIX}.aux

polyphonic-dissonance.tex: polyphonic-auxiliary.ly polyphonic-measure.ly polyphonic-passing.ly polyphonic-changing-note-group.ly polyphonic-cambiata.ly polyphonic-suspension.ly polyphonic-anticipation.ly polyphonic-consonant4th.ly

clean:
	@-rm polyphonic-dissonance.{aux,bbl,blg,dep,log,out,tex} snippet*.ly tmp*.{out,pdf} 2>/dev/null
	@find . -type d -name "??" -maxdepth 1 -exec rm -rf {} +

.PHONY: clean
