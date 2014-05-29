all:
	echo "Type 'make dist' to build the zip file"

dist:
	rm -f templates.zip
	zip templates.zip *.tex *.sty README.* *.cls *.bib *.info

doc:
	pdflatex colin && bibtex colin && pdflatex colin && pdflatex colin
	rm *.aux *.log *.blg chapters/*.aux *.out

clean:
	rm *.aux *.log *.blg *.out