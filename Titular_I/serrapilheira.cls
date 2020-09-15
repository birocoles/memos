\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{serrapilheira}[2018/12/05 Serrapilheira LaTeX class]
\LoadClass[onecolumn, timesnewroman, 12pt, openany]{book}
%\RequirePackage[english]{babel}
\RequirePackage[brazil]{babel}
\RequirePackage{natbib}
\RequirePackage[colorlinks=true, 
				linkcolor=blue, 
				urlcolor=blue,
				citecolor=blue
				]{hyperref}
% --
% for including individual full refecenre in text
% --
\RequirePackage{bibentry}
\nobibliography*
% --

%--
% for including references to a given section
%--
%\RequirePackage[sectionbib]{chapterbib}
\RequirePackage{chapterbib}
%--

\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
%\RequirePackage{booktabs}
\RequirePackage{geometry}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{pgfgantt}
\RequirePackage{lipsum}
\RequirePackage{amsmath,bm}
\RequirePackage{wrapfig}
\RequirePackage{xcolor}
\RequirePackage{fontawesome}

\geometry{
	a4paper, 
	onecolumn,
	left=2cm, right=2cm, top=2cm, bottom=3cm}

\pagestyle{fancy}
\fancyhf{}
\rhead{}
\lhead{}
\rfoot{\thepage}

\frenchspacing % Better looking spacings after periods

% The command above will ensure that if two files are encountered with the same basename 
% but different extensions (for example image.eps, image.pdf, image.jpeg and image.png), 
% then the .eps version will be used first, .pdf version will be used second, .jpeg will be used
% third and finnaly the .png will be used in the absence of other versions
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png,.jpg}

% Command for including grants
\newcommand{\FundingEntry}[6]{
	% agency, title portuguese, title english, id, grant name, amount, period
	\noindent #1, T{\'i}tulo: ``#2", ID: #3, Modalidade: #4, Montante: R\$ #5, #6.}

% Command for including supervised theses
\newcommand{\ThesisEntry}[6]{
	% type (MSc or PhD), title portuguese, student, institution, year conclusion, supervisor
	\noindent [#1] T{\'i}tulo: ``#2", Autor(a): #3, \textit{#4} (#5) - #6.}

% Comando for including current students
\newcommand{\Student}[5]{
	% name, level (MSc or PhD), main or co supervisor, institution, expected conclusion at
	\noindent #1, #2, #3, #4, #5.}


% Parameters of the bibliography section
\bibliographystyle{abbrvnat}
\setcitestyle{authoryear,round} % use parentheses

% define the linespacing as 1.5
\renewcommand{\baselinestretch}{1.5}

\graphicspath{{figures/}}