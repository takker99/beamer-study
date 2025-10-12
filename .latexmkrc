#!/usr/bin/env perl

$do_cd            = 1;
$latexargs        = '-shell-escape -synctex=1 -halt-on-error -file-line-error -interaction=nonstopmode';
$latexsilentargs  = $latexargs . ' -interaction=batchmode';
$pdflatex         = 'lualatex %O ' . $latexargs . ' %S';
$latex_silent     = 'lualatex ' . $latexargs;
$bibtex_use       = 2;
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$out_dir          = './dist';
$emulate_aux      = 1;
$aux_dir          = './.tex_intermediates';
$pdf_mode         = 1;
$clean_ext        = "$clean_ext run.xml bcf nlo bbl-SAVE-ERROR";