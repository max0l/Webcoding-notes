.PHONY: pdf
.DEFAULT_GOAL := pdf

pdf: FORCE
    pandoc --toc --listings -H .\code.tex --defaults=./pdf.yaml

FORCE: