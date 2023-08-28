\ProvidesClass{note-taking}[2023/08/27 v1.0 Note taking class]
\NeedsTeXFormat{LaTeX2e}[2003/12/01]

\LoadClass[11pt,letterpaper,onecolumn,oneside]{article} 
\RequirePackage[dvips,letterpaper]{geometry}
\RequirePackage{arydshln}						% dashed lines
\RequirePackage[short]{datetime}				% date style
\RequirePackage{enumitem}						% enumerate style

% some math and psuedo code packages
\RequirePackage{amsmath,amssymb,amsthm,amsfonts,algorithm, algpseudocode}
\setlength{\paperheight}{11in}				%set paper height
\setlength{\paperwidth}{8.5in}				%set paper width

\RequirePackage{courier}
% \renewcommand*{\familydefault}{\ttdefault}	%set default font to courier
\raggedright 							   	%set left alignment
\pagenumbering{arabic}						%set page numbering
% --------------------- lecture command ---------------------
\newcounter{lectureCounter}					%set lecture counter
% lecture command automatically increments lecture counter
\newcommand{\lecture}[1]{
	\par
	\stepcounter{lectureCounter} \noindent
    \textsc{Week} \arabic{lectureCounter} \hfill \textsc{date:} #1\\
	\dotfill \par	
}
% --------------------- end lecture command --------------------- 



% --------------------- commands ---------------------
%% define course command
\newcommand{\@course}{course code unknown}	
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}

%% lecture summary command
%% summary should be centered then the text should start on the next line
%% in a minipage of 0.6\textwidth
\newcommand{\summary}[1]{%
	\begin{center}
    \begin{minipage}{0.6\textwidth}
        \centering
        SUMMARY \\
        #1
    \end{minipage}
	\end{center}
}
% --------------------- end commands ---------------------
\setlist[description]{style=multiline,leftmargin=1in,font=\normalfont}

% --------------------- coverpage command ---------------------
\newlength{\titheadskip}
\setlength{\titheadskip}{2.25in}

\newcommand{\coverpage}{
	\thispagestyle{empty}
	\vspace*{\titheadskip}
	\begin{center}
	    \MakeUppercase{\@title}\\
	    \MakeUppercase{\@course }
	    \vspace{2.5in}\\
	    \@author\\
	    \@date
	\end{center}
\newpage\setcounter{page}{1}
}
% --------------------- end coverpage command ---------------------