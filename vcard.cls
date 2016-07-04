\ProvidesClass{vcard}[2016/07/04 LaTeX-Visitenkarten]

\LoadClass[a4paper,12pt]{article}

\RequirePackage[latin1]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{bbding}

\definecolor{uni}{gray}{.4}

\RequirePackage[zw32010, emptycrossmark]{ticket}

\renewcommand{\ticketdefault}{
%\put( 50, 5){\includegraphics[width=30mm, origin=bl]{qr_code.jpg}}
%\put( 7, 8){\small \Phone}
%\put( 7.5, 3){\small \Envelope }
}


%% Default Texts:
\newcommand{\@name}{Ihr Name}
\newcommand{\@jobtitle}{Ihr Titel}
\newcommand{\@degree}{Ihr Akad. Grad}
\newcommand{\@shortdegree}{Ihr Akad. Grad (short)}
\newcommand{\@phone}{Ihre Telefonnummer}
\newcommand{\@mail}{Ihre Mailadresse}

%% Define comands for vcards:
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\jobtitle}[1]{\renewcommand{\@jobtitle}{#1}}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}
\newcommand{\shortdegree}[1]{\renewcommand{\@shortdegree}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\mail}[1]{\renewcommand{\@mail}{#1}}

\newcounter{numcards}

\newcommand{\printcardsstandard}[1][10]{%
	\setcounter{numcards}{0}
	\whiledo{\value{numcards}<#1}{%
		\ticket{
			%\put(60, 5){\includegraphics[width=30mm, origin=bl]{qr_code.jpg}} % if qr-code feature is wanted
			\put(6, 44){\bfseries\LARGE\@name}
			\put(7, 38){\@jobtitle}
			\put(7, 33){\@degree}
			\put(28, 7.8){\small \Phone}
			\put(28.2, 3){\small \Envelope }
			\put(34, 8){\small\@phone}
			\put(34, 4){\small\@mail}
		}
		\stepcounter{numcards}
	}
}

\newcommand{\printcardslong}[1][10]{%
	\setcounter{numcards}{0}
	\whiledo{\value{numcards}<#1}{%
		\ticket{
			%\put(60, 5){\includegraphics[width=30mm, origin=bl]{qr_code.jpg}} % if qr-code feature is wanted
			\put(6, 44){\bfseries\LARGE\@name}
			\put(6, 41.5){\rule{7cm}{0.8pt}} % rule 
			%\put(6, 41.5){\line(1, 0){60}}	% line
			\put(7, 38){\@jobtitle}
			\put(7, 33){\@degree}
			\put(28, 7.8){\small \Phone}
			\put(28.2, 3){\small \Envelope }
			\put(34, 8){\small\@phone}
			\put(34, 4){\small\@mail}
		}
		\stepcounter{numcards}
	}
}


\newcommand{\printcardsshort}[1][10]{%
	\setcounter{numcards}{0}
	\whiledo{\value{numcards}<#1}{%
		\ticket{
			\put(2, 38){\bfseries\LARGE\@name}
			%\put(60, 5){\includegraphics[width=30mm, origin=bl]{qr_code.jpg}} % if qr-code feature is wanted
			\put(28, 7.8){\small \Phone}
			\put(28.2, 3){\small \Envelope }
			\put(34, 8){\small\@phone}
			\put(34, 4){\small\@mail}			
		}
		\stepcounter{numcards}
	}
}

\renewcommand{\familydefault}{\sfdefault}
\endinput