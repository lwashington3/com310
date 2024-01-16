%! Package = com310lab
%! Author = Len Washington III
%! Date = 12/26/23

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{com310lab}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=comlab,
	prefix=comlab@
}

\DeclareStringOption{title}
\DeclareStringOption{lab}

\ProcessKeyvalOptions*

\setlength{\parindent}{0pt}

\RequirePackage[
	title={Lab \comlab@lab: \comlab@title}
]{com310}

\renewcommand{\maketitle}{\begin{center}
	\textbf{\com@title}
\end{center}}

\NewEnviron{overview}{
	\textbf{Overview.}
	\noindent\BODY
}

\NewEnviron{problem}{
	\textbf{Problem.}
	\noindent\BODY
}

\NewEnviron{task}{
	\textbf{Task.}
	\noindent\BODY
}

\NewEnviron{writeup}{
	\textbf{Write up report.}
	\noindent\BODY
}