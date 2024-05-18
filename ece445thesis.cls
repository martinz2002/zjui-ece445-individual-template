%% ece445thesis.cls
%% ZJUI ECE 445 Individual Report Template

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ece445thesis}[2024-05-17 by Martin Zhong (giant@zju.edu.cn) ZJUI ECE 445 Individual Report Template]

\LoadClass[a4paper,11pt,oneside]{book}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[format=hang,font={small},labelfont={bf},labelsep={quad},skip=5.5pt]{caption}
\RequirePackage{amsmath, amssymb, amsfonts}  % for math spacing
\RequirePackage[margin=1in]{geometry} % page layout 1' margin
\RequirePackage{enumitem}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage[ruled,hangingcomment,nofillcomment,noend]{algorithm2e}% pseudo-code algorithm support
\RequirePackage[bottom]{footmisc}
\RequirePackage{float}
\RequirePackage{anyfontsize}
\RequirePackage{csquotes} % Provide displayquote
\RequirePackage[style=ieee]{biblatex}
\RequirePackage[titletoc]{appendix}
\renewcommand{\appendixname}{Appendix}
\renewbibmacro*{date}{%
  \iffieldundef{year}
  {\bibstring{nodate}}
  {\printdate}}

\RequirePackage{fontspec}
\RequirePackage[scheme=plain, fontset=fandol]{ctex}\defaultfontfeatures{} % for Chinese support
\usepackage{newtxtext, newtxmath} % Times font
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref}
\RequirePackage{xurl}
\RequirePackage{setspace}
\RequirePackage{afterpage}
\RequirePackage[per-mode=symbol,inter-unit-product = \ensuremath{{}\cdot{}},mode=math]{siunitx}
\RequirePackage[section]{placeins} % block the floating objects to the current section
\DeclareSIPrefix\micro{\text{\textmu}}{-3} % typing SI Units, not necessary for default LMC font
\onehalfspacing

\RequirePackage{pdfpages} % for including pdf files
\includepdfset{{pagecommand={\thispagestyle{fancy}}}}

% Font settings
\renewcommand*{\UrlFont}{\rmfamily}

% Chapter/section/subsection title format
\titleformat{\chapter}
{\fontsize{15pt}{\baselineskip}\selectfont\bfseries}
{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{\baselineskip}

\titleformat{\section}
{\fontsize{13pt}{\baselineskip}\selectfont\bfseries}
{\thesection}{1em}{}
\titlespacing{\section}{0pt}{5.5pt}{5.5pt}

\titleformat{\subsection}
{\normalsize\bfseries}
{\thesubsection}{1em}{}
\titlespacing{\subsection}{0pt}{5.5pt}{5.5pt}

\titleformat{\subsubsection}
{\normalsize}
{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0pt}{5.5pt}{5.5pt}

\setlength{\parskip}{0pt}
\setcounter{secnumdepth}{3}

% Enumerate list format
\setenumerate[1]{
  itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=2ex}
\setitemize[1]{
  itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=2ex}
\setdescription{
  itemsep=0pt,partopsep=0pt,parsep=0pt,topsep=2ex}
\setlength{\parindent}{2em}
\setlength{\headheight}{14pt}
\renewcommand{\headrulewidth}{0.5pt}

\newcommand\setninept{\fontsize{9pt}{\baselineskip}\selectfont}
\pagestyle{fancy}\fancyhf{}
\def\setfancyheadfoot{
  \fancyhead[L]{ZJUI Senior Design Project}
  \fancyfoot[C]{\thepage}
}

\setfancyheadfoot
\fancypagestyle{plain}{\setfancyheadfoot}

% Listings
\lstset{
  basicstyle=\small\ttfamily,
  numbers=left,
  numberstyle=\scriptsize,
  tabsize=4,
  breaklines,
  columns=fixed,
  keepspaces,
  commentstyle=\itshape\color{ForestGreen},
  keywordstyle=\color{Blue}\bfseries,
}

% New commands defined for the template
\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authorname[1]{\def\AUTHORNAME{#1}}
\newcommand\studentid[1]{\def\STUDENTID{#1}}
\newcommand\semester[1]{\def\SEMESTER{#1}}
\newcommand\grade[1]{\def\GRADE{#1}}
\newcommand\major[1]{\def\MAJOR{#1}}
\newcommand\supervisor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}

\newcommand{\HRule}{\rule{\linewidth}{0.1mm}}

\def\RPTTYPE{ZJUI Senior Design Project}
\def\RPTTITLE{~}
\def\RPTDATE{~}
\def\AUTHORNAME{~}
\def\STUDENTID{~}
\def\SEMESTER{~}
\def\FACULTYNAME{~}
\def\TANAME{~}
\def\PROJECTNUMBER{~}
\def\MAJOR{~}
\def\GRADE{~}
\def\PROJNBR{~}