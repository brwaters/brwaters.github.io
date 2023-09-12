% Required Document Information
\ProvidesClass{resume}[2023/01/01 v0.1 Resume Class]
\LoadClass[10pt,letterpaper]{article}

% Package w/ Settings
\usepackage[margin=0.60in]{geometry}
\usepackage[]{parskip}
\usepackage[
    dvipsnames,
    svgnames,
    x11names,
    hyperref
]{xcolor}

% Packages
\usepackage{
    array,
    fontenc,
    ragged2e,
    tabularx
}

% Fonts
% LaTeX Font Catalogue: https://tug.org/FontCatalogue/
\usepackage[default]{sourcesanspro}

% Page Styling
\pagestyle{empty}

% Custom Page Styling Commands
\def\sectionlineskip{\medskip}
\def\sectionskip{\medskip}
\def\itemsectionskip{\medskip}
\def\itemskip{\smallskip}
\def\projectitemsectionskip{\medskip}
\def\projectitemskip{\smallskip}

% Custom Colours
% Colour Theme Generator: https://color.adobe.com/
\definecolor{linkColour}{RGB}{47,84,153}
\definecolor{headerColour}{RGB}{17,33,63}
\definecolor{subHeaderColour}{RGB}{91,83,126}

% Custom Text Styling
\newcommand{\nameHeader}[1]{{\huge\bf\scshape{#1}}}
\newcommand{\header}[1]{{\large\bf\scshape\textcolor{headerColour}{#1}}}
\newcommand{\subHeader}[1]{{\normalfont\textcolor{subHeaderColour}{#1}}}
\newcommand{\sectionHeader}[1]{{\large\bf\MakeUppercase{#1}}}
\newcommand{\tableHeader}[1]{{\normalfont\textcolor{subHeaderColour}{#1}}}
\newcommand{\normalText}[1]{\normalfont{#1}}

% Hyperref Package
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    urlcolor=linkColour,
}

% Name Section
\newenvironment{namesection}[1]{%
    {\nameHeader{#1}}%
}

% Contact Information Section
\newenvironment{contactsection}[4]{%
    {#1} \hfill {#3} \\
    {#2} \hfill {#4}%
}%

% Header Section
\newenvironment{headersection}[1]{%
    \sectionskip
    {\sectionHeader{#1}}
    \sectionlineskip
    \hrule
}%

% General Section
\newenvironment{generalsection}[4]{%
    {\header{#1}} \hfill {\normalText{#2}} \\
    {\subHeader{#3}} \hfill {\normalText{#4}}%
}%

% Item Section
\newenvironment{itemsection}[4]{%
    {\header{#1}} \hfill {\normalText{#2}} \\
    {\subHeader{#3}} \hfill {\normalText{#4}}%

    \itemskip
    \begin{list}{$\cdot$}{\leftmargin=1.50em\rightmargin=1.50em}
        \itemsep -0.40em \vspace{-0.25em}%
}{%
    \end{list}%
}%

% Project Item Section
\newenvironment{projectitemsection}[4]{%
    {\header{#1}} \hfill {\subHeader{#2}} \\
    {\normalText{#3}}%

    \projectitemskip
    \begin{list}{$\cdot$}{\leftmargin=1.50em\rightmargin=1.50em}
        \itemsep -0.40em \vspace{-0.25em}%
}{%
    \end{list}%
}%

