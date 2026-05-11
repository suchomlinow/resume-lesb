use POSIX qw(strftime);

# Force latexmk to use the MacTeX toolchain instead of any older TinyTeX
# binaries earlier on PATH.
$pdflatex = '/Library/TeX/texbin/pdflatex %O %S';
$latex = '/Library/TeX/texbin/latex %O %S';
$xelatex = '/Library/TeX/texbin/xelatex %O %S';
$lualatex = '/Library/TeX/texbin/lualatex %O %S';

# Keep generated PDFs and auxiliary files out of the repo root.
$out_dir = 'build';
$aux_dir = 'build';

# Name output files like CV-lesb-2026-05-11.pdf while keeping main.tex
# as the source entrypoint.
$jobname = 'CV-lesb-' . strftime('%Y-%m-%d', localtime);
