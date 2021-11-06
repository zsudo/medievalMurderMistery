\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{medievalBook}[2020/04/19 Medieval Book Class]

\LoadClass[a4paper, showtrims, draft]{memoir}
\medievalpage
\checkandfixthelayout[fixed]
% -----------------------------------
% ------- Additional Packages -------
% -----------------------------------

\RequirePackage{graphicx}
\RequirePackage{background}

% -----------------------------------
% ------------- Fonts ---------------
% -----------------------------------

\RequirePackage{lettrine}

\RequirePackage[quiet]{fontspec}
\defaultfontfeatures{Contextuals=Alternate,Numbers=OldStyle,RawFeature={+dlig}}
\setmainfont[RawFeature={+dlig},ItalicFeatures={RawFeature=+cv04,CharacterVariant=5:2}]{EB Garamond}

\RequirePackage{xeCJK}
\setCJKmainfont[Path=/usr/share/fonts/adobe-source-han-sans/]{SourceHanSansJP-Normal.otf}


\newfontfamily\bookTitleFont{EB Garamond}
\newfontfamily\spacedfont[RawFeature={-ss02},LetterSpace=40,WordSpace=6]{EB Garamond}
%\newfontfamily\headerfont{EBGaramond12-Regular.otf}

\newfontfamily\authorFont{EB Garamond SC}
\newfontfamily\publisherFont[Path=/usr/share/fonts/OTF/]{EBGaramond08-Italic.otf}
\newfontfamily\lettrinefont{EB Garamond Initials}

\renewcommand{\LettrineFontHook}{\lettrinefont}




% -----------------------------------
% ------------- Color ---------------
% -----------------------------------

\RequirePackage{xcolor}


% -----------------------------------
% ------------- Header --------------
% -----------------------------------

\RequirePackage{titlesec}
\RequirePackage{fourier-orns}

\newcommand{\bookIntro}[3]{
   \makebox[\textwidth][c]{\includegraphics[width=6in]{#3}}
   {\centering #1,\\\large #2\\}
}


% -----------------------------------
% ------------- Chapter --------------
% -----------------------------------

\chapterstyle{section}

% -----------------------------------
% ------------- Margins -------------
% -----------------------------------


% -----------------------------------
% ------------- Footer --------------
% -----------------------------------


% -----------------------------------
% ---------- Environments -----------
% -----------------------------------

\RequirePackage{setspace}
\RequirePackage{afterpage}

\newenvironment{Japanese}[1]{
    #1
}


\newenvironment{halfTitle}{
   \newpage
   \begin{center}
   }
   {
   \end{center}
   \newpage
}

\newenvironment{frontispiece}[2]{
   \newpage
   \thispagestyle{empty}
   \vspace*{\fill}
   \begin{center}
   \framebox[1\width][c]{\includegraphics[width=4in]{#1}}\\
   #2
   \end{center}
   \vspace*{\fill}
   \newpage
}

\newenvironment{titlePage}[6]{
   \newpage
   \thispagestyle{empty}
   \makebox[\textwidth][c]{\includegraphics[width=6in]{#1}}
   \begin{center}
   {\bookTitleFont \huge #2} \\
   {\spacedfont #3} \\
   \decotwo \\
   By: \\
   {\authorFont #4} \\
   \vspace*{\fill}
   Published By: \\
   {\publisherFont \huge #5} \\
   {#6} \\
   \end{center}
   \newpage
}


\newenvironment{colophon}[3]{
   \newpage
   \vspace*{\fill}
   \noindent
%   \setlrmarginsandblock{20cm}{5cm}{*}
   %\setlrmargins{6cm}{8cm}{*}
   \noindent\makebox[\linewidth][c]{%
   \begin{minipage}{0.5\textwidth}
      #1
      #2
      #3
   \end{minipage}}
%   \checkandfixthelayout
   \newpage
}

\newenvironment{dedication}{
   \newpage
   \begin{center}
   }
   {
   \end{center}
   \newpage
}

\newenvironment{foreword}{

}

\newenvironment{hepigraph}{
\newpage
}

\newenvironment{introduction}{

}



\newenvironment{story}{
   \newpage
   }
   {
   \newpage
  % \checkandfixthelayout[fixed]
}



%\newenvironment{storyPage}
%\newenvironment{artPage}
%\newenvironment{artFullSpread}
