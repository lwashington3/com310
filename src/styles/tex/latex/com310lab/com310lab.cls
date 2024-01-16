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
\DeclareBoolOption[false]{turnin}

\ProcessKeyvalOptions*

\setlength{\parindent}{0pt}

\RequirePackage[
	title={Lab \comlab@lab: \comlab@title}
]{com310}

\renewcommand{\maketitle}{\begin{center}
	\textbf{\com@title}
\end{center}}

\ifcomlab@turnin
	\NewEnviron{overview}{}
	\NewEnviron{problem}{}
	\NewEnviron{task}{}	
	\NewEnviron{writeup}{}
\else
	\NewEnviron{overview}{
		\textbf{Overview.}
		\BODY\\
	}
	
	\NewEnviron{problem}{
		\textbf{Problem.}
		\BODY\\
	}
	
	\NewEnviron{task}{
		\textbf{Task.}
		\BODY\\
	}
	
	\NewEnviron{writeup}{
		\textbf{Write up report.}
		\BODY\\
	}
\fi

\newcommand{\labtitle}{\textbf{Title: \com@title, by \com@author}\\}

\NewEnviron{topic}{
	\textbf{Topic.}
	\BODY\\
}

\NewEnviron{issue}{
	\textbf{Issue.}
	\BODY\\
}

\NewEnviron{hypothesis}{
	\textbf{Hypothesis.}
	\BODY\\
}

\NewEnviron{method}{
	\textbf{Method.}
	\BODY\\
}

\NewEnviron{results}{
	\textbf{Results.}
	\BODY
}

\NewEnviron{discussion}{
	\textbf{Discussion.}
	\BODY\\
}