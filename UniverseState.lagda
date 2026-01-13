\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{♯}{\ensuremath{\mathnormal\sharp}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpF[1]{\AgdaOperator{\F{#1}}}

\newcommand\sds{\spacefactor\sfcode`.\ \space}

\title{le me'oi .Agda.\ velski be lo su'u lo prenu cu sikta lo le munje ku co'e / The Agda Description of that Prenu Interact with the Universe}
\author{la .varik.\ .VALefor.}
\begin{document}

\maketitle

\section{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu skicu le se krici be vo'a\sds  .i na mabla ja tolvu'e fa lo nu toltu'i

\paragraph{English}
VARIK describes the stuff which is believed by VARIK.  Disagreeing is not fucked or immoral.

\section{le vrici / The Miscellaneous}

\begin{code}
{-# OPTIONS --guardedness #-}
\end{code}

\begin{code}
-- {-# OPTIONS --safe #-}
\end{code}

\begin{code}
open import IO
  using (
    IO
  )
open import Level
  using (
  )
open import Function
  using (
    _$_
  )
\end{code}

\section{le se ctaipe / The Types}
\subsection{le se ctaipe be lo munje zazyfau / The Type of Universe States}
\paragraph{la .lojban.}
ni'o ro da poi ke'a se ctaipe la'oi zoi.\ \F{UniverseState}\ .zoi.\ zo'u da broda cei ke me le re'enje munje me'o zazyfau ke'e ja cu sinxa lo broda noi mupli fa lo se detri be li pa so ze no pi'e pa pi'e pa pi'e no pi'e no pi'e no  .i srana zo'e je lo se zvati be lo ratni

.i la .varik.\ cu jinvi le du'u cumki fa lo nu ciksi la'oi .\F{UniverseState}.\ldots kei goi ko'a kei je le du'u ko'a mutce le ka ce'u pluja

\paragraph{English}
For all values (of \F{UniverseState}) $c$, $c$ is a physical universe state or represents a state in the physical universe.  An example of a state is the situation of 19700101000000.  The stuff is relevant to locations (of atoms) and whatnot.

VARIK opines that defining \F{UniverseState} is possible.  Additionally, VARIK opines that defining \F{UniverseState} is very complex.

\begin{code}
UniverseState : Set
UniverseState = {!!}
\end{code}

\subsection{le se ctaipe be zo'e pe loi se zu'edji be lo prenu / The Type regarding Stuff which is Intended/Agentively-Decided by Prenu}
\paragraph{la .lojban.}
ni'o ro da poi ke'a se ctaipe la'oi zoi.\ \F{ConsciousData}\ .zoi.\ zo'u ro de poi ke'a co'e ja zu'edji lo ka ce'u xi re sikta lo le munje ku co'e zo'u da co'e ja co'e ja vasru lo velski lo se zu'edji be de

\paragraph{English}
For all values (of \F{ConsciousData}) $c$, for all prenu (which intend to affect the physical universe) $p$, $c$ contains/whatever a description of stuff which is intended by $p$.

\begin{code}
ConsciousData : Set
ConsciousData = {!!}
\end{code}

\section{le fancu / The Functions}

\subsection{le temci fancu / The Time Function}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{tick}\ \B{s} \B{c}\ .zoi.\ co'e ja sinxa lo jalge lo nu cfari va'o lo co'e ja ke se sinxa be la'oi .\B{s}.\ fa lo se ke co'e ja velski be la'oi .\B{c}.\ kei je cu se lamli'e la'oi .\B{s}.

.i la .varik. cu krici le du'u lo'i fasnu cu me'oi .discrete.

\paragraph{English}
\F{tick} \B{s} \B{c} represents/whatever the result of that (the stuff which is described/whatever by \B{c} happens ``in'' \B{s}).  The event of \F{tick} \B{s} \B{c} is immediately preceded by the event of \B{s}.

VARIK believes that time is discrete.

\begin{code}
tick : UniverseState → ConsciousData → UniverseState
tick = {!!}
\end{code}

\subsection{le fancu pe lo nu facki lo du'u zu'edji ma kau / The Type for Determining the Stuff which is Intended by Prenu}
\paragraph{la .lojban.}
ni'o la'oi .\F{poll}.\ co'e ja sinxa lo se zu'edji be lo prenu poi curmi lo nu ke'a sikta le munje... be'o je cu jai filri'a tu'a la'oi .\F{tick}.

.i la .varik.\ cu pilno la'oi .\D{IO}.\ ki'u zo'e joi le su'u vo'a krici ga je\ldots

\begin{itemize}
	\item le du'u lo prenu na ro'onje kei no'u le su'u le munje cu co'e ja vasru lo prenu naje lo xadni be lo prenu gi ga je
	\item le du'u lo prenu na me'oi .deterministic.\ gi
	\item le su'u le munje cu jai me'oi .deterministic.
\end{itemize}

\paragraph{English}
\F{poll} represents/whatever the stuff which is intended by prenu $p$ such that that ($p$ interacts with the universe) is permitted.  Additionally, \F{poll} facilitates ``using'' \F{tick}.

That (VARIK uses \D{IO}) is relevant to that VARIK believes\ldots

\begin{itemize}
	\item that (prenu are immaterial) (which is that the universe ``contains'' the bodies of prenu but does not contain prenu),
	\item that (prenu are not deterministic), and
	\item that (the universe is deterministic).
\end{itemize}

\begin{code}
poll : IO ConsciousData
poll = {!!}
\end{code}

\subsection{le pa moi be lo'i ro munje zazyfau / The 1st Universe-State}

\begin{code}
x0 : UniverseState
x0 = {!!}
\end{code}

\section{le mupli / The Example}

\begin{code}
{-# NON_TERMINATING #-}
munje : IO UniverseState
munje = lupe x0
  where
  lupe : UniverseState → IO UniverseState
  lupe x = poll IO.>>= (lupe Function.∘ tick x)
\end{code}
\end{document}
