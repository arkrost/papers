@echo off

if "%1"=="clean" goto clean
pdflatex learning
pdflatex learning

goto finish

:clean

del *.log *.aux *.bbl *.blg *.snm *.toc *.nav *.out
del learning.pdf

:finish
echo "done."
