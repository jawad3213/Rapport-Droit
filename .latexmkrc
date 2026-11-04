# .latexmkrc — Force XeLaTeX for Arabic & fontspec support
$pdf_mode = 5;          # 5 = use XeLaTeX
$dvi_mode = 0;
$postscript_mode = 0;

$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$xdvipdfmx = 'xdvipdfmx -E -o %D %O %S';

# If an external tool invokes the pdflatex rule (e.g. via -pdf), redirect it to xelatex
$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
