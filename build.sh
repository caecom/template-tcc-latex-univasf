#!/bin/bash

file=$1

if [ -z "$file" ]; then
	file="main.tex";
fi

pdflatex -shell-escape $file
bibtex ${file%.tex}.aux
pdflatex -shell-escape $file
pdflatex -shell-escape $file
