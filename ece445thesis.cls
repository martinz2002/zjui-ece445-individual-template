%% ece445.cls
%% Copyright 2023 Tiantian Zhong
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Tiantian Zhong.
%
% This work consists of the files senior-design.cls.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ece445thesis}[2024-01-15 by Martin Zhong (zhongmartin@outlook.com) Template for ZJUI ECE 445 Individual Reports]

\LoadClass[a4paper,11pt,oneside]{book}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[format=hang,font={small},labelfont={bf},labelsep={quad}]{caption}
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
\RequirePackage[scheme=plain, fontset=fandol]{ctex}\defaultfontfeatures{}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref}
\RequirePackage{xurl}
\RequirePackage{setspace}
\RequirePackage{afterpage}
\RequirePackage[per-mode=symbol,inter-unit-product = \ensuremath{{}\cdot{}},mode=math]{siunitx}
\RequirePackage[section]{placeins} % 阻止浮动体飘到所属subsection之后
\DeclareSIPrefix\micro{\text{\textmu}}{-3} % typing SI Units, not necessary for default LMC font
\onehalfspacing

% Font settings
\renewcommand*{\UrlFont}{\rmfamily}

% Chapter/section/subsection title format
\titleformat{\chapter}
{\fontsize{16pt}{\baselineskip}\selectfont\bfseries}
{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{\baselineskip}

\titleformat{\section}
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}
{\thesection}{1em}{}

\titleformat{\subsection}
{\normalsize\bfseries}
{\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\normalsize\bfseries}
{\thesubsubsection}{1em}{}

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
% \renewcommand{\chaptermark}[1]{\markboth{\thechapter.~#1}{}}

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
\newcommand\sponsor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}

\newcommand{\HRule}{\rule{\linewidth}{0.1mm}}
\newcommand\nameemail[3]{
  {#1~\textsc{#2}}\\%name
  \href{mailto:#3}{#3}%Email
}
\newcommand\nameid[3]{
{#1~\textsc{#2}}\\%name
{#3}%Student ID
}
\newcommand\name[2]{#1~\textsc{#2}}
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
