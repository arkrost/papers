#!/bin/sh

L="learning"

if [[ "$1" != "clean" ]]
then
    for l in $L
    do
        if [[ -f "$l.bib" ]]
        then
            pdflatex $l
            bibtex $l
        fi
        pdflatex $l
        pdflatex $l
    done
else
    rm -f *.log *.aux *.bbl *.blg *.nav *.out *.snm *.toc
    for l in $L
    do
        rm -f $l.pdf
    done
fi
