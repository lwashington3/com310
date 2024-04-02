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

\setlength{\parindent}{0.25in}

\RequirePackage{com310}

\hypersetup{pdfkeywords=\comfinal@keywords}

\geometry{
	left=0.6in,
	right=0.6in,
	top=0.98in,
	bottom=0.79in
}

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

\newenvironment{introduction}{
	\section{Introduction}\label{sec:introduction}
	\ifcomfinal@addfiller
	You may write an essay on a topic of your choosing.
	The topic can be anything covered in the course so far: acoustic or articulatory characteristics of speech sounds in English or any other language;
	regional or social variation in speech; language change; speech synthesis; speech and emotion; and language acquisition.
	You could also address other areas related to speech that we didn't cover in class: speech delays, pathologies, or disfluenciens; evolutionary origins of speech; forensic phonetics (i.e., using phonetics clues to solve criminal cases);
	speech and aging; acoustic aspects of signing; or any other topic that is directly related to the application of sound patterns in language.

	Your essay must be argumentative or experimental in nature and follow the format below and not be merely summative of a body of literature.
	For example, you might be interested in evaluating the evidence in favor of Neanderthal speech capacity.
	A final paper may review three or four primary articles on Neanderthal culture alongside three or four articles or secondary sources on Neanderthal speech capacity.
	Such a paper might call into question the evidence supporting Neanderthal culture -- or at least the extent of it -- and observe that the claims for speech capacity, and the rhetoric behind descriptions of the evidence, is more hopeful than revealing.
	A paper may very well conclude that definite evidence for Neanderthal culture and language capacity is yet seen.
	Or, you might be interested in the special register adults use when talking to pets or to babies, and you might wish to pursue an experiment to test whether there is any difference in speech style between pet-directed and infant-directed in speech.
	No matter what topic you choose, your paper should include a clear statement of the topic that you are investigating.
	An example would be, ``This paper is about the way adults talk to pets versus infants.
	It’s well-established that adults use a similar register to talk to puts and infants $\dots$''
		You should provide a description of the issue at stake.
	An issue is the problem that you are attempting to solve.
	An example would be, ``The special register of infant-directed speech is sometimes claimed to be intended to clearly convey speech characteristics to language-learning infants, yet speech to pets would appear to share this same special register, and there is no suggestion that adults talk to pets in this way to help them learn language.
	At issue is whether pet- and infant-directed speech are, in fact, identical.'' You will need to refer to library or other resources to motivate your issue.
	\fi
		}{}

\newenvironment{hypothesis}{
	\section{Hypothesis}\label{sec:hypothesis}
	\ifcomfinal@addfiller
	You should include a clear statement of the research questions and hypotheses under investigation.
	A hypothesis is a tentative explanation for an (anticipated) observation of data.
	An example would be, “A study was conducted to address the issue of pet- vs.
	infant-directed speech.
	I predict that if speech directed to infants is to intended to be clear, then such speech would have, among other properties, an expanded vowel space because $xxx$.
	In contrast, if pet-directed speech is diminutive and not intended for language-learning purposes, then such speech would be characterized as being merely loud speech and not show any expanded vowel space because $yyy$.” You may, however, not be interested in pursuing an experiment.
	In that case, you will write a paper that’s argumentative in nature, but you will still need to identify a research question where the answer would resolve whatever issue you raise.
	For example, it may be possible to address the issue about pet-versus infant-directed speech without conducting original research.
	One could look for recordings of adults talking to both pets and infants and measure differences along the lines described above.
	\fi
	}{}

\newenvironment{study}{
	\section{Study}\label{sec:study}
	\ifcomfinal@addfiller

	\fi
	}{}

\newenvironment{results}{
	\section{Results}\label{sec:results}
	\ifcomfinal@addfiller

	\fi
	}{}

\newenvironment{discussion}{
	\section{Discussion}\label{sec:discussion}
	\ifcomfinal@addfiller

	\fi
	}{}