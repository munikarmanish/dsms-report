TEX := pdflatex
#TEX := lualatex
MAIN := dsms-report
BIB := bibtex
WASTE := *.aux *.toc *.log *.blg *.bbl *.out *.lof *.lot *.bcf *blx.bib *run.xml

default:
	$(TEX) $(MAIN)
	$(TEX) $(MAIN)

all: clean
	$(TEX) $(MAIN)
	$(BIB) $(MAIN)
	$(TEX) $(MAIN)
	$(TEX) $(MAIN)

clean:
	rm -rf $(WASTE)
