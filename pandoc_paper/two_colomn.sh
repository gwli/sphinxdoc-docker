#pandoc --filter pandoc-citeproc --bibliography=paper.bib --variable classoption=twocolumn --variable papersize=a4paper -s paper.md -o paper.pdf
#pandoc --filter pandoc-citeproc --bibliography=bibex.bib --variable classoption=twocolumn --variable papersize=a4paper -s paper.md -o paper.pdf
#generate latex
#pandoc --filter pandoc-citeproc --bibliography=bibex.bib --variable classoption=twocolumn --variable papersize=a4paper -s paper.md -t latex -o paper.txt
#pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --latex-engine=pdflatex --template=/Users/kjhealy/.pandoc/templates/latex.template --filter pandoc-citeproc --csl=/Users/kjhealy/.pandoc/csl/apsr.csl --bibliography=/Users/kjhealy/Documents/bibs/socbib-pandoc.bib
pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block --filter pandoc-citeproc --bibliography=bibex.bib --variable classoption=twocolumn --variable papersize=a4paper -s paper.md -o paper.pdf
