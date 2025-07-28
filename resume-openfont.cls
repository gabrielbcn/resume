% Intro Options
\ProvidesClass{resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont{Myriad Pro}[Ligatures=Rare,Numbers={OldStyle,Proportional}]
\setsansfont{Myriad Pro}[Ligatures=Rare,Numbers={OldStyle,Proportional}]

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}

\newcommand{\lastupdated}{
  \begin{textblock}{50}(170,0)
    \color{date}
    \fontspec{Myriad Pro Light}
    \fontsize{8pt}{10pt}\selectfont
    Last Updated \today
\end{textblock}}

% QR
\newcommand{\qr}{
  \begin{textblock}{60}(0,0)
    \hspace{14pt}
    \href{https://www.linkedin.com/in/gabrielmesquida/}{
    \includegraphics[height=56pt]{img/qr.jpg}}
\end{textblock}}

% Name command
\newcommand{\namesection}[3]
{
  \begin{minipage}[t]{0.33\textwidth}
    \href{https://www.linkedin.com/in/gabrielmesquida/}{
      \small
      <LinkedIn>
      \\
      \includegraphics[height=56pt]{img/qr.jpg}
    }
  \end{minipage}
  \hfill
  \begin{minipage}[t]{0.66\textwidth}
    \vspace{0pt}
    \fontsize{30pt}{50pt}
    \fontspec{Myriad Pro}\selectfont #1
    \fontspec{Myriad Pro Semibold}\selectfont #2
    \\[5pt]
    \color{headings}
    \fontspec{Myriad Pro}[Numbers={OldStyle,Proportional}]
    \fontsize{11pt}{14pt}\selectfont #3
  \end{minipage}
}

% Section separators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

% Headings command
\titleformat{\section}{\color{headings}
  \scshape
  \fontspec{Myriad Pro Light}
\fontsize{16pt}{22pt}\selectfont\raggedright\uppercase}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
  \color{subheadings}
  \fontspec{Myriad Pro Semibold}
\fontsize{12pt}{10pt}\selectfont\raggedright}{}{0em}{}

% Location command
\newcommand{\location}[1]{
  \color{subheadings}\raggedright\fontsize{10pt}{12pt}\selectfont
{#1\\} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
  \vspace{2pt}
  \color{headings}\raggedright\fontsize{10pt}{12pt}\selectfont {#1\\}
  \normalfont
}

% Certifications command
\newcommand{\cert}[1]{
  \color{headings}\raggedright\fontsize{10pt}{12pt}\selectfont {#1\\}
  \normalfont
  \vspace{2pt}
}

% Intro
\newcommand{\intro}[1]{
  \vspace{10pt}
  \color{subheadings}\raggedright\fontsize{12pt}{14pt}
  \selectfont \textit{#1}
  \normalfont
  \vspace{1em}
}

% Roles
\newcommand{\role}[4]{
  \fontspec{Myriad Pro Semibold}[Numbers=Uppercase]
  \fontsize{12pt}{14pt}\selectfont\raggedright
  \color{headings}{#1}
  \fontspec{Myriad Pro Semibold}[Numbers={OldStyle,Proportional}]
  \color{subheadings}{#2}\normalfont
\color{headings}\:|\:\color{subheadings}\uppercase{#3}\color{headings}\:|\:\color{subheadings}{#4\\}}

% Role detail command
\newcommand{\detail}[1]{
  \vspace{1pt}
  \color{subheadings}\raggedright\fontsize{10pt}{12pt}\selectfont
{#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \vspace{-\topsep}
  \begin{itemize}
    \itemsep1pt \parskip0pt \parsep0pt}
    {
  \end{itemize}\vspace{-\topsep}}
