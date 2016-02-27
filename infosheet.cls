\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{infosheet}[2016/02/26]

% Default options
\ExecuteOptions{10pt,landscape}

% Process options
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%        Initial Setup        %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%        Load Base Class      %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%           Packages          %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{multicol}
\RequirePackage[landscape,top=.5in,left=.5in,right=.5in,bottom=.5in]{geometry}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb}
%\RequirePackage{calc}
%\RequirePackage{ifthen}
%\RequirePackage{color,graphicx,overpic}
%\RequirePackage{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%       Custom Commands       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\maketitle{
  \begin{center}
    \Large{\@title}
    
    \normalsize \textsc{by: \@author}
  \end{center}
}

\newcommand\@labelheader{infosheet}

% \constant{name}{symbol}{value}{units}
\newcommand\constant[5]{%
  \expandafter\def\csname\@labelheader-constname-#1\endcsname{#2}%
  \expandafter\def\csname\@labelheader-constsymb-#1\endcsname{#3}%
  \expandafter\def\csname\@labelheader-constvalue-#1\endcsname{#4}%
  \expandafter\def\csname\@labelheader-constunits-#1\endcsname{#5}%
}
\newcommand\constname[1]{\csname\@labelheader-constname-#1\endcsname}
\newcommand\constsymb[1]{\csname\@labelheader-constsymb-#1\endcsname}
\newcommand\constvalue[1]{\csname\@labelheader-constvalue-#1\endcsname}
\newcommand\constunits[1]{\csname\@labelheader-constunits-#1\endcsname}

\newcommand\formula[3]{%
  \expandafter\def\csname\@labelheader-formulaname-#1\endformulaname{#2}%
  \expandafter\def\csname\@labelheader-formulavalue-#1\endcsname{#3}%
}
\newcommand\formulaname[1]{\csname\@labelheader-formulaname-#1\endcsname}
\newcommand\formulavalue[1]{\csname\@labelheader-formulavalue-#1\endcsname}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%        Document Setup       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%                             %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument{%
  \pagestyle{empty}%
  \renewcommand{\section}{\@startsection{section}{1}{0mm}%
    {-1ex plus -.5ex minus -.2ex}%
    {0.5ex plus .2ex}%x
    {\normalfont\large\bfseries}}%
  \renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
    {-1explus -.5ex minus -.2ex}%
    {0.5ex plus .2ex}%
    {\normalfont\normalsize\bfseries}}%
  \renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
    {-1ex plus -.5ex minus -.2ex}%
    {1ex plus .2ex}%
    {\normalfont\small\bfseries}}%
  \def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
    T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

  % Don't print section numbers
  \setcounter{secnumdepth}{0}
  
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{0pt plus 0.5ex}
  
  \raggedright
  \footnotesize
  \begin{multicols}{3}
  
  % multicol parameters
  % These lengths are set only within the two main columns
  %\setlength{\columnseprule}{0.25pt}
  \setlength{\premulticols}{1pt}
  \setlength{\postmulticols}{1pt}
  \setlength{\multicolsep}{1pt}
  \setlength{\columnsep}{2pt}
}

\AtEndDocument{%
  \end{multicols}%
}

\endinput
