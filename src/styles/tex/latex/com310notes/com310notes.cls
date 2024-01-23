%! Class = com310notes
%! Author = Len Washington III
%! Date = 1/9/24

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{com310notes}[Len Washington III's Document Class]

\LoadClass[12pt]{report}

\RequirePackage{com310}

\renewcommand{\maketitle}{\begin{center}\Large \ifx\com@title\empty\com@date~Notes\else\com@title\fi\end{center}}