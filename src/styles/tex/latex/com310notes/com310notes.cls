%! Class = com310notes
%! Author = Len Washington III
%! Date = 1/9/24

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{com310notes}[Len Washington III's Document Class]

\LoadClass[12pt]{report}

\RequirePackage{com310}
\RequirePackage{enumitem}

\renewcommand{\maketitle}{\begin{center}\Large \ifx\com@title\empty\com@date~Notes\else\com@title\fi\end{center}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}

\RequirePackage{tikz}
\RequirePackage{tikz-qtree}
\RequirePackage{pdflscape}
\usetikzlibrary{scopes,trees,positioning,graphs,arrows.meta}
\newcommand{\globaltikzset}{
	\tikzset{every node/.style={minimum width=2em,draw,circle},
		blank/.style={draw=none},
		edge from parent/.style=
			{draw,edge from parent path={(\tikzparentnode) -- (\tikzchildnode)}},
		level distance=1cm,
		sibling distance=5mm}
}