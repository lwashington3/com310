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
\DeclareBoolOption[true]{addfiller}

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
	\setboolean{\comlab@addfiller}{false}
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
	\ifcomlab@addfiller%
	Clearly state the topic that you are investigating.
	An example would be, ``This lab addresses the way adults talk to pets versus infants.''
	\fi%
	\BODY
}

\NewEnviron{issue}{
	\textbf{Issue.}
	\ifcomlab@addfiller%
	A description of the issue at stake.
	An issue is the problem that you are attempting to solve.
	An example would be,
	``The special register of infant-directed speech is sometimes claimed to be intended to clearly contrary speech characteristics to language-learning infants, yet speech to prts would appear to share this same special register, and there is no suggestion that adults talk to pets in this way to help them learn language.
	At issue is whether pet- and infant-directed speech are, in fact, identical.''
	You only need to cite relevant information from our lectures, from the textbook, or from the lab instructions itself to motivate your issue, but however you decide to state the issue, be clear to draw out what is at state in addressing it.
	\fi%
	\BODY
}

\NewEnviron{hypothesis}{
	\textbf{Hypothesis.}
	\ifcomlab@addfiller%
	A statement of the research questions and hypotheses under investigation.
	A hypothesis is a tentative explanation for an (anticipated) observation of data.
	An example would be, ``Data were analyzed to address the issue of pet- vs. infant-directed speech.
	I predict that if speech directed to infants is intended to be clear, then such speech would have, among other properties, an expanded vowel space because xxx.
	In contrast, if pet-directed speech is diminutive and not intended for language-learning purposes, then such speech would be characterized as being merely loud speech and not show any expanded vowel space because yyy.''
	This particular hypothesis requires quite a bit of knowledge of phonetics, which you will not possess at the beginning of the semester.
	You should state a hypothesis as strongly as your knowledge of phonetics and speech characteristics allow.
	Don't go out on a limb and guess at things if you are uncertain.
	\fi%
	\BODY
}

\NewEnviron{method}{
	\textbf{Method.}
	\ifcomlab@addfiller%
	A description of the method.
	An example would be,
	``In the lab activity, I recorded $x$ people saying $y$ words to $z$ pets, and then assume $x$ people saying the same words to $z$ infants.
	Then, I made the following measurements: $x$, $y$, and $z$.''
	Be specific.
	Explain what equipment you used, or how data were obtained.
	Define any measurements.
	An example would be,
	``Loud speech was defined as any speech with an average intensity of xxx, and expanded vowel space was defined as cases where [acoustic measures] showed yyy.''
	\fi%
	\BODY
}

\NewEnviron{results}{
	\textbf{Results.}
	\ifcomlab@addfiller%
	A description of the results.
	An example would be,
	``Results indicated vowel space for pet-directed speech exhibited louder, longer segments, but not a bigger vowel space, consistent with the prediction that such speech is merely loud and not meant to help discriminate among speech sounds.
	In contrast, infant-directed speech \textit{did} exhibit an expanded vowel space, which I take as evidence as supporting the hypothesis that the special register to infants is for language learning purposes and is acoustically distinct from pet-directed speech.''
	Provide relevant tables, figures of (minimally) descriptive statistics where relevant.
	\fi%
	\BODY
}

\NewEnviron{discussion}{
	\textbf{Discussion.}
	\ifcomlab@addfiller%
	A critical analysis of your study.
	An example would be,
	``While the study revealed a difference in pet- versus infant-directed speech, it does have some drawbacks.
	First, I didn't discuss whether infant-directed speech is actually effective in helping infants to discriminate among speech sounds.
	Moreover, vowel-space isn't necessarily a strong indicator of an attempt to teach an infant to discriminate among speech sounds in the first place.
	Rather, an equally plausible explanation could be that adults xxx.''
	\fi%
	\BODY
}