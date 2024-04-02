%! Package = com310final
%! Author = Len Washington III
%! Date = 4/2/23

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{com310final}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt,twocolumn]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=comfinal,
	prefix=comfinal@
}

\DeclareStringOption{title}
\DeclareBoolOption[false]{turnin}
\DeclareBoolOption[true]{addfiller}
\DeclareStringOption[]{keywords}

\ProcessKeyvalOptions*

\setlength{\parindent}{0pt}

\RequirePackage{com310}

\hypersetup{pdfkeywords=\comfinal@keywords}

\renewcommand{\maketitle}{%
	\twocolumn[{%
		\centering
		{\Large\textbf{\com@title}}\\[1em]
		{\large\com@author}\\[1em]
	}]
}

\newcommand{\keywords}{
%	\if%
	\textbf{Keywords:} \comfinal@keywords
%	\fi%
}

\RequirePackage{titlesec}
\titleformat{\section}
{\centering\normalfont\scshape\bfseries}
{\arabic{section}. \MakeUppercase}
{0em}
{\MakeUppercase}

\ifcomfinal@turnin
	\NewEnviron{overview}{}
	\NewEnviron{problem}{}
	\NewEnviron{task}{}	
	\NewEnviron{writeup}{}
	\setboolean{\comfinal@addfiller}{false}
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
