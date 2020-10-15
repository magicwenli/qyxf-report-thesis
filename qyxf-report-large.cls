%%
%% This is file `qyxf-book.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% qyxf.dtx  (with options: `book')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2019 by xjtu-blacksmith
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is xjtu-blacksmith.
%% 
%% -----------------------------------
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{qyxf-report-large}
  [2019/05/26 v2.1 Template for qyxf's report]
\typeout{The book template provided by Qian Yuan Xue Fu}
\LoadClass[12pt]{article}
\newif\if@decoration
\newif\if@opensource
\newif\if@sourcefont


\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{tikz}
\usetikzlibrary{calc,backgrounds}
\RequirePackage{tcolorbox,tabu}
\RequirePackage{lastpage}
\RequirePackage{enumerate}
\RequirePackage{pifont}
\RequirePackage{appendix}
\RequirePackage{longtable}
\RequirePackage{fontspec}
\RequirePackage{xcolor}

\DeclareOption{color}{}
\DeclareOption{parskip}{
  \setlength\parskip{0.2\baselineskip}}
\DeclareOption{decoration}{\@decorationtrue}
\DeclareOption{opensource}{\@opensourcetrue}
\DeclareOption{sourcefont}{\@sourcefonttrue}
\newtoks\subtitle

% 设置纸张类型与大小
\DeclareOption{a4paper}{
  \setlength\paperheight{297mm}%
  \setlength\paperwidth{210mm}}
\DeclareOption{b5paper}{
  \setlength\paperheight{250mm}%
  \setlength\paperwidth{176mm}}
 
% 字体
\ProcessOptions
\if@sourcefont
  \RequirePackage[SlantFont]{xeCJK}
  \RequirePackage[heading]{ctex}
  \setCJKmainfont{思源宋体 CN}
  \setCJKsansfont{思源黑体 CN}
\else
  \RequirePackage[heading]{ctex}
\fi
\setmainfont{Cambria}       % 目前默认使用的serif字体
\setsansfont{Calibri}       % 目前默认使用的sans-serif字体
\setmonofont{Courier New}   % 目前默认使用的等宽字体
\setmathfont{Cambria Math}  % 与正文字体相适应的数学字体

\renewcommand{\thefootnote}{\textbf{(\arabic{footnote})}}

% 设置图片格式
\RequirePackage{graphicx}
\graphicspath{{./figure/}{./pic/}{./image}}
\setlength{\textfloatsep}{6pt plus 2pt minus 4pt}
\setlength{\intextsep}{6pt plus 2pt minus 2pt}

% 设置表格
\RequirePackage{longtable}
\tcbuselibrary{listings,theorems,skins}

% 页边距
\RequirePackage{geometry}
\geometry{margin=1in}

% 引用高亮
\RequirePackage{hyperref}
\hypersetup{
  breaklinks,
  unicode,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdfborder={0 0 0},
  linktocpage,
  pageanchor=true
}
   
% codes
\usepackage{listings}
\colorlet{mygray}{black!30}
\colorlet{mygreen}{green!60!blue}
\colorlet{mymauve}{red!60!blue}
\lstset{
  language=c, 
%  backgroundcolor=\color{gray!3},  
  basicstyle=\ttfamily,
  columns=fullflexible,
  breakatwhitespace=false,      
  breaklines=true,                
  captionpos=b,                    
  commentstyle=\color{mygreen}, 
  extendedchars=true,              
%  frame=single,                   
  keepspaces=true,             
  keywordstyle=\color{blue},                      
  numbers=none,                
  numbersep=5pt,                   
  numberstyle=\tiny\color{black}, 
  rulecolor=\color{mygray},        
  showspaces=false,               
  showtabs=false,                 
  stepnumber=5,                  
  stringstyle=\color{mymauve},    
  tabsize=4,                      
  title=\lstname                
}

% 汉风图纹	
\RequirePackage{pgfornament-han}
\RequirePackage{pgfornament}
\ctexset{section={name={,}}}


% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyhead[RO] {\thepage}
\fancyhead[LO] {\footnotesize{\makeatletter\the\subtitle\makeatother}}
\fancyfoot[LO] {\footnotesize{\@title}}
\fancyfoot[RO] {\footnotesize{\makeatletter\@author\makeatother}}
%\chead{\fangsong \@title} 
%\rfoot{\thepage} 
%\fancyhead[OC]{\fangsong\nouppercase\rightmark}
%\cfoot{\resizebox{0.2\linewidth}{1.5ex}{%
%\pgfornamenthan[scale=0.05]{58}}}
%\fancypagestyle{plain}{%
%\fancyhf{}
%\fancyfoot[C]{\\\resizebox{0.2\linewidth}{1.5ex}{%
%\pgfornamenthan[scale=0.05]{58}}}
%}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\setlength{\headheight}{13pt}

%class，id
\newcommand\class[1]{\newcommand{\classloc}{#1}}
\newcommand\id[1]{\newcommand{\idloc}{#1}}

% 封面页
\renewcommand*{\maketitle}{%
\begin{titlepage}
\phantom{s}
\vspace{3cm}
\begin{center}\large
\begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{black!80},%
left=20pt]
{\fontsize{40pt}{\baselineskip}\selectfont\bfseries\@title}\\[0.5\baselineskip]
{\Huge\itshape\the\subtitle}
\end{tcolorbox}
\vspace{3cm}
\begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{black!50},%
left=20pt]
{\Large \classloc \\[0.2\baselineskip]
\@author  \\[0.2\baselineskip]
\idloc  \\[0.2\baselineskip]
\@date}
\end{tcolorbox}
\vfill
\textsc{Xi'an Jiaotong University\\ Computer Science and Technology}
\end{center}
\begin{tikzpicture}[remember picture, overlay]
  \begin{pgfonlayer}{background}
  \node at ($(current page.east) +(0in,0in)$) {%
  \includegraphics[width=0.85\textwidth]{cover.png}};
  \end{pgfonlayer}
\end{tikzpicture}
\end{titlepage}
\thispagestyle{empty}
}

% 目录
\renewcommand\tableofcontents{%
\pagestyle{empty}
\centerline{%
\normalfont\LARGE\bfseries\contentsname%
\@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}
}
\vskip 3ex%
{\setlength\parskip{0pt}\@starttoc{toc}}
\pagestyle{fancy}
\setcounter{page}{1}
\vfill
\newpage
}

\endinput
%%
%% End of file `qyxf-book.cls'.
