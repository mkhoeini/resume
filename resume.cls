%%%%%%%%%%%%%%%%%
% This is resume.cls (v1.0.0, 9 June 2023) written by
% Hossein Moradi (moradidavijani@gmail.com).
%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{resume}[Used and modified AltaCV class v1.6.5]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\newif\if@raggedtwoe
\DeclareOption{ragged2e}{\@raggedtwoetrue}
\ProcessOptions\relax

\LoadClass{extarticle}

\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage{xstring}
\RequirePackage{paracol}
\RequirePackage{import}

\RequirePackage{etoolbox}
\RequirePackage[a-1b]{pdfx}
\RequirePackage{accsupp}
\RequirePackage[margin=2cm]{geometry}
\RequirePackage[fixed]{fontawesome5}
\RequirePackage{scrlfile}
\RequirePackage{xparse}
\RequirePackage[skins]{tcolorbox}
\RequirePackage[inline]{enumitem}
\RequirePackage{graphicx}
\RequirePackage{trimclip}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{arrows}

\if@raggedtwoe
  \RequirePackage[newcommands]{ragged2e}
\fi

% Color variables
\definecolor{primary}{HTML}{006666}
\definecolor{accent}{HTML}{1ab0b3}
\definecolor{black}{HTML}{384347}
\definecolor{black-muted}{HTML}{b9b9b9}
\definecolor{white}{HTML}{ffffff}
\definecolor{white-muted}{HTML}{e0e0e0}

% Color settings
\colorlet{body}{black}
\colorlet{body-muted}{black-muted}
\colorlet{name}{body}
\colorlet{heading}{body}
\colorlet{emphasis}{body}
\colorlet{tagline}{accent}
\colorlet{accent}{accent}

% Fonts
\setmainfont{Inter}[
    Scale=0.9,
    Path=./fonts/inter/,
    FontFace={ul}{n}{*-Thin},
    FontFace={el}{n}{*-ExtraLight},
    FontFace={l}{n}{*-Light},
    UprightFont={*-Regular},
    FontFace={mb}{n}{*-Medium},
    FontFace={sb}{n}{*-SemiBold},
    FontFace={b}{n}{*-Bold},
    BoldFont={*-Bold},
    FontFace={eb}{n}{*-ExtraBold},
    FontFace={ub}{n}{*-Black}
]
\newfontfamily{\headingfontfamily}{Rubik}[
    Scale=1,
    Path=./fonts/rubik/,
    FontFace={l}{n}{*-Light},
    FontFace={l}{it}{*-LightItalic},
    UprightFont={*-Regular},
    ItalicFont={*-Italic},
    FontFace={mb}{n}{*-Medium},
    FontFace={mb}{it}{*-MediumItalic},
    FontFace={sb}{n}{*-SemiBold},
    FontFace={sb}{it}{*-SemiBoldItalic},
    FontFace={b}{n}{*-Bold},
    FontFace={b}{it}{*-BoldItalic},
    BoldFont={*-Bold},
    BoldItalicFont={*-BoldItalic},
    FontFace={eb}{n}{*-ExtraBold},
    FontFace={eb}{it}{*-ExtraBoldItalic},
    FontFace={ub}{n}{*-Black},
    FontFace={ub}{it}{*-BlackItalic}
]

\newcommand{\namefont}{\Huge\bfseries\headingfontfamily}
\newcommand{\taglinefont}{\large}
\newcommand{\personalinfofont}{\small}
\newcommand{\cvsectionfont}{\Large\headingfontfamily}

\newcommand{\itemmarker}{{\small\textbullet}}
\newcommand{\ratingmarker}{\faCircle}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vspace{0.25\baselineskip}}
\setlist[itemize]{label=\itemmarker}

\newcommand{\divider}{\par
  \vspace*{\dimexpr-\parskip-\baselineskip+5pt}
  \textcolor{body-muted}{\hdashrule{\linewidth}{0.6pt}{}}\par\medskip
}

\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}

\newcommand{\utffriendlydetokenize}[1]{%
\scantokens{%
  \catcode`\_=12%
%   \catcode`\^=12%
%   \catcode`\{=12%
%   \catcode`\}=12%
  \catcode`\&=12%
  \catcode`\$=12%
  \catcode`\#=12%
  \catcode`\~=12%
%   \catcode`\\=12%
  {#1}%
}%
}

\input{glyphtounicode}
\pdfgentounicode=1

\ExplSyntaxOn
\NewDocumentCommand{\printinfo}{m m o}{%
  \BeginAccSupp{method=escape,ActualText={#1:~#2}}
    \IfNoValueTF{#3}{%
      \mbox{\textcolor{body}{\normalfont #1}~\utffriendlydetokenize{#2}}%
    }{%
       \mbox{\textcolor{body}{\normalfont #1}~
       \href{#3}{\utffriendlydetokenize{#2}}}
    }%
  \EndAccSupp{}
}%


\NewDocumentCommand{\NewInfoField}{s m m o}{%
  \IfBooleanF{#1}{
    \IfNoValueF{#4}{\csdef{#2 hyperprefix}{#4}}%
  }
  \csdef{#2 symbol}{#3}%
  \IfBooleanTF{#1}
    {\csdef{#2}##1##2{%
        \IfNoValueTF {##2}
          {\printinfo{\csuse{#2 symbol}}{##1}}%
          {\printinfo{\csuse{#2 symbol}}{##1}[##2]}%
      }%
    }
    {\csdef{#2}##1{%
        \IfNoValueTF {#4}
          {\printinfo{\csuse{#2 symbol}}{##1}}%
          {\printinfo{\csuse{#2 symbol}}{##1}[\csuse{#2 hyperprefix}##1]}%
      }%
    }
}
\ExplSyntaxOff

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}
\NewInfoField{email}{\faAt}[mailto:]
\NewInfoField{phone}{\faPhone}[tel:]
\NewInfoField{twitter}{\faTwitter}[https://]
\NewInfoField{linkedin}{\faLinkedin}[https://]
\NewInfoField{github}{\faGithub}[https://]
\NewInfoField{stackoverflow}{\faStackOverflow}[https://]
\NewInfoField{location}{\faMapMarker}

% Render a rounded/square avatar
\newcommand{\avatar}[3][]{%
  \centering
  \begin{minipage}{#2}%
    \def\rounded{#1}
    \def\roundedavatar{rounded}
    \ifx\rounded\roundedavatar
      \tikz\path[fill overzoom image={#3}]circle[radius=0.5\linewidth];
    \else
      \includegraphics[width=\linewidth]{#3}
    \fi%
  \end{minipage}%
}

\newcommand{\makecvheader}{%
  \begingroup
    \begin{minipage}{\dimexpr\linewidth}%
        \raggedright%
        {\namefont\color{name}\MakeUppercase{\@name}\par}
        \medskip
        {\taglinefont\color{tagline}\@tagline\par}
        \medskip
        {\personalinfofont\@personalinfo\par}
    \end{minipage}\hfill%
  \endgroup
}

\renewenvironment{quote}{\color{accent}\itshape\large}{\par}

\newcommand{\cvsection}[1]{%
  \raggedright\nointerlineskip\medskip
  {\color{heading}\cvsectionfont\MakeUppercase{#1}}%
  \divider
}

\newcommand{\cvexpericence}[4]{%
  {\large\color{emphasis}\headingfontfamily#1}
  {\hfill\small#3~\faCalendar\par}
  \medskip
  {\large\color{accent}\headingfontfamily#2}
  {\hfill\small#4~\faMapMarker\par}
  \medskip
}

\newcommand{\cvevent}[4]{%
  {\large\color{emphasis}\headingfontfamily\faGraduationCap~#1\par\smallskip}
  {\ifstrequal{#2}{}{}{\footnotesize\color{accent}#2\par}}
  % {\footnotesize\color{accent}#3}
  {\footnotesize\color{accent}#4\par}
  \bigskip
}

\newcommand{\signature}[1]{%
  \begin{tikzpicture}[remember picture, overlay]
    \node[anchor=south east] at ($(current page.south east) + (-0.25cm, 0.25cm)$) {\scriptsize\color{body}#1};
  \end{tikzpicture}%
}

\newcommand{\cvskill}[2]{%
  \raggedright
  \StrSubstitute{#2}{, }{ $\bullet$ }[\result]%
  {\small\color{body}{#1\par\smallskip}}
  {\small\color{accent}\result\par\bigskip}
}

\AtBeginDocument{%
  \hypersetup{hidelinks}
  \urlstyle{same}
}

\AddToHook{begindocument/before}{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}
