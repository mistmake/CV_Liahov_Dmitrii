PDF_NAME := resume
PDF_NAME_EN := resume_en
XELATEX := xelatex -interaction=nonstopmode -halt-on-error

.PHONY: all pdf pdf-en pdf-bib clean

all: pdf

pdf:
	$(XELATEX) $(PDF_NAME).tex
	$(XELATEX) $(PDF_NAME).tex

pdf-en:
	$(XELATEX) $(PDF_NAME_EN).tex
	$(XELATEX) $(PDF_NAME_EN).tex

pdf-bib:
	$(XELATEX) $(PDF_NAME).tex
	biber $(PDF_NAME)
	$(XELATEX) $(PDF_NAME).tex
	$(XELATEX) $(PDF_NAME).tex

clean:
	rm -f $(PDF_NAME).aux \
		$(PDF_NAME).bbl \
		$(PDF_NAME).bcf \
		$(PDF_NAME).blg \
		$(PDF_NAME).log \
		$(PDF_NAME).out \
		$(PDF_NAME).pdf \
		$(PDF_NAME).run.xml \
		$(PDF_NAME).synctex.gz \
		$(PDF_NAME).synctex\(busy\)
