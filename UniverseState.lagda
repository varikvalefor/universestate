% vdid: tjzEcBy2BLjTulMx

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
\newunicodechar{∘}{\ensuremath{\mathnormal\circ}}
\newunicodechar{₀}{\ensuremath{\mathnormal{{}_0}}}

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

\section{le me'oi .abstract.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu ciksi ja skicu bau la'oi .Agda.\ joi la .lojban.\ fo le ko'a goi te tcidu fe le si'o lo prenu cu sikta lo le ro'onje munje ku co'e kei vo'a\sds  .i la .varik.\ cu troci ga je lo nu ko'a jai filri'a lo nu jimpe fi lo se krici be vo'a kei kei jenai lo nu bitygau lo prenu jenai du be vo'a gi lo nu lo na'e mutce be lo ka ce'u xi re slabu la'oi .Agda.\ be'o je prenu cu ka'e jimpe fi ko'a

\paragraph{English}
VARIK defines/describes (via the combination of Agda and English) the idea (of VARIK) regarding that prenu interact with the physical universe.  The explanation is the document.  VARIK attempts that the document facilitates that prenu understand about the stuff which is believed by VARIK.  VARIK does not attempt that the document convinces prenu which are not VARIK.  But VARIK does attempt that prenu which are not very-familiar with Agda are capable of understanding the document.

\section{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu skicu le se krici be vo'a\sds  .i na mabla ja tolvu'e fa lo nu toltu'i

\paragraph{English}
VARIK describes the stuff which is believed by VARIK.  Disagreeing is not fucked or immoral.

\section{le to'e banzu je torveki / The Summary\ldots which is Inadequate}
\paragraph{la .lojban.}
ni'o la .varik.\ cu krici ga je\ldots
\begin{itemize}
	\item le du'u lo le munje ku co'e cu broda cei me'oi .deterministic.\ gi ga je
	\item le du'u lo prenu na jai broda gi ga je
	\item le du'u lo prenu cu ka'e sikta lo le munje ku co'e gi ga je
	\item le du'u ro da poi ke'a me le munje me'o zazyfau zo'u su'o de poi ke'a me le munje me'o zazyfau zo'u lo no me le munje me'o zazyfau cu se lidne da je cu lidne de gi
	\item le su'u lo su'u lo prenu su sikta lo le munje ku co'e cu smimlu tu'a la'oi .\D{IO}.\ pe la'oi .Agda.
\end{itemize}

\paragraph{English}
VARIK believes\ldots
\begin{itemize}
	\item that (physical universe stuff is deterministic),
	\item that (prenu are not deterministic),
	\item that (prenu are capable of interacting with the physical universe),
	\item that (for all physical universe states $s$, a physical universe state $s_2$ exists such that no physical universe state $s_1$ exists such that $s_1$ is preceded by $s$ and precedes $s_2$), and
	\item that (that (prenu interact with the physical universe) resembles \D{IO} of Agda).
\end{itemize}

\section{le vrici / The Miscellaneous}

\subsection{tu'a ko'a goi zoi zoi.\ \texttt{--guardedness}\ .zoi.}
\paragraph{la .lojban.}
ni'o zoi zoi.\ \texttt{--guardedness}\ .zoi.\ jai sarcu tu'a la'oi .\D{IO}.

\paragraph{English}
\texttt{--guardedness} is necessary for using \D{IO}.

\begin{code}
{-# OPTIONS --guardedness #-}
\end{code}

\subsection{tu'a ko'a goi zoi zoi.\ \texttt{--safe}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu djica lo nu ko'a mapti lo ro me'oi .Agda.\ co'e je se zbasu be vo'a\sds  .i ku'i zoi zoi.\ \texttt{--guardedness}\ .zoi.\ jai tolmapti ko'a

\paragraph{English}
VARIK diesres that all Agda stuff which is created by VARIK is compatible with \texttt{--safe}.  But \texttt{--guardedness} is incompatible with \texttt{--safe}.

\begin{code}
-- {-# OPTIONS --safe #-}
\end{code}

\subsection{le se me'oi .importe / The Stuff which is Imported}

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
    _∘_;
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
ni'o ro da poi ke'a se ctaipe la'oi zoi.\ \F{ConsciousData} \B{s}\ .zoi.\ zo'u ro de poi ke'a co'e ja zu'edji lo ka ce'u xi re sikta lo le munje ku co'e pe la'oi .\B{s}.\ zo'u da co'e ja co'e ja vasru lo velski lo se zu'edji be de

\paragraph{English}
For all values (of \F{ConsciousData} \B{s}) $c$, for all prenu (which intend to affect the physical universe) $p$, $c$ contains/whatever a description of stuff which is intended (``under''/``immediately-after'' the universe state of \B{s}) by $p$.

\begin{code}
ConsciousData : UniverseState → Set
ConsciousData = {!!}
\end{code}

\section{le fancu / The Functions}

\subsection{le temci fancu / The Time Function}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{tick}\ \B{s} \B{c}\ .zoi.\ co'e ja sinxa lo jalge lo nu cfari va'o lo co'e ja ke se sinxa be la'oi .\B{s}.\ fa lo se ke co'e ja velski be la'oi .\B{c}.\ kei je cu se lamli'e la'oi .\B{s}.\sds  .i la .varik. cu krici le du'u lo'i le munje ku zazyfau cu me'oi .discrete.

\paragraph{English}
\F{tick} \B{s} \B{c} represents/whatever the result of that (the stuff which is described/whatever by \B{c} happens ``in'' \B{s}).  The event of \F{tick} \B{s} \B{c} is immediately preceded by the event of \B{s}.\sds  VARIK believes that physical universe time is discrete.

\begin{code}
tick : (s : UniverseState) → ConsciousData s → UniverseState
tick = {!!}
\end{code}

\subsection{le fancu pe lo nu facki lo du'u zu'edji ma kau / The Type for Determining the Stuff which is Intended by Prenu}

\subsubsection{le co'e ja te pilno / The Purpose}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{poll} \B{s}\ .zoi.\ co'e ja sinxa lo se zu'edji be va'o la'oi .\B{s}.\ bei fe lo prenu poi curmi lo nu ke'a sikta le munje... be'o je cu jai filri'a tu'a la'oi .\F{tick}.

\paragraph{English}
\F{poll} \B{s} represents/whatever the stuff which is intended (``under'' $s$) by prenu $p$ such that that ($p$ interacts with the universe) is permitted.  Additionally, \F{poll} facilitates ``using'' \F{tick}.

\subsubsection{le su'u pilno la'oi .\D{IO}.\ / Using \D{IO}}
\paragraph{la .lojban.}
ni'o la .varik.\ cu pilno la'oi .\D{IO}.\ ki'u zo'e joi le su'u vo'a krici ga je\ldots

\begin{itemize}
	\item le du'u lo prenu na ro'onje kei no'u le su'u le munje cu co'e ja vasru lo prenu naje lo xadni be lo prenu gi ga je
	\item le du'u lo prenu na me'oi .deterministic.\ gi
	\item le su'u le munje cu jai me'oi .deterministic.
\end{itemize}

\paragraph{English}
That (VARIK uses \D{IO}) is relevant to that VARIK believes\ldots

\begin{itemize}
	\item that (prenu are immaterial) (which is that the universe ``contains'' the bodies of prenu but does not contain prenu),
	\item that (prenu are not deterministic), and
	\item that (the universe is deterministic).
\end{itemize}

\subsubsection{le velcki co'e / The Definition Thing}

\begin{code}
poll : (s : UniverseState) → IO $ ConsciousData s
poll = {!!}
\end{code}

\subsection{le pa moi be lo'i ro munje zazyfau / The 1st Universe-State}
\paragraph{la .lojban.}
ni'o la'oi .\F{x₀}.\ sinxa ko'a goi le pa moi be lo'i ro le munje ku zazyfau\sds  .i la .varik.\ cu krici le du'u tolsti tu'a le munje\sds  .i ku'i la .varik.\ na birti lo du'u ko'a mo kau\sds  .i zo'e joi la'e di'u krinu le su'u la .varik.\ na ciksi la'oi .\F{x₀}.

\paragraph{English}
\F{x₀} represents the 1st state of the physical universe.  VARIK believes that the universe begins.  But VARIK is not certain about the nature of the 1st state of the physical universe.  Being uncertain is a part of the justification of that VARIK does not define \F{x₀}.

\begin{code}
x₀ : UniverseState
x₀ = {!!}
\end{code}

\section{le mupli / The Example}
\paragraph{la .lojban.}
ni'o la \F{munje} cu jai .indika fi le si'o co'e lo se sinxa be la'oi .\F{poll}.\ be'o je lo se sinxa be la'oi .\F{tick}.\ldots kei fe le su'u le munje cu jai pruce lo se zu'edji co'e joi lo le munje ku zazyfau

\paragraph{English}
\F{munje} indicates about the stuff (which is represented by \F{poll}) and the stuff which is represented by \F{tick}.  \F{munje} indicates about the idea of that (the universe is a process, and the input is a combination of the data (regarding stuff which is desired/agentively-intended by prenu) and universe states).

\begin{code}
{-# NON_TERMINATING #-}
munje : IO UniverseState
munje = lupe x₀
  where
  lupe : UniverseState → IO UniverseState
  lupe x = poll x IO.>>= (lupe ∘ tick x)
\end{code}
\end{document}
