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
open import Codata.Musical.Notation
  using (
    ♯_
  )
\end{code}

\section{le se ctaipe / The Types}
\subsection{le se ctaipe be lo munje zazyfau / The Type of Universe States}

\begin{code}
UniverseState : Set
UniverseState = {!!}
\end{code}

\subsection{le se ctaipe be zo'e pe loi se zu'edji be lo prenu / The Type regarding Stuff which is Intended/Agentively-Decided by Prenu}

\begin{code}
ConsciousData : Set
ConsciousData = {!!}
\end{code}

\section{le fancu / The Functions}

\subsection{le temci fancu / The Time Function}

\begin{code}
tick : UniverseState → ConsciousData → UniverseState
tick = {!!}
\end{code}

\subsection{le fancu pe lo nu facki lo du'u zu'edji ma kau / The Type for Determining the Stuff which is Intended by Prenu}

\begin{code}
poll : IO ConsciousData
poll = {!!}
\end{code}

\subsection{le pa moi be lo'i ro munje zazyfau / The 1st Universe-State}

\begin{code}
x0 : UniverseState
x0 = {!!}
\end{code}

\section{le ralju / The Thing which is Primary}

\begin{code}
{-# NON_TERMINATING #-}
munje : IO UniverseState
munje = lupe x0
  where
  -- ni'o me'oi .bind. co'e ki'u zo'e joi le su'u ctaipe
  -- mabla va'o tu'a la'o zoi. IO._>>=_ .zoi.
  -- .i la .varik. cu jijyji'i le du'u srera tu'a le proga
  lupe : UniverseState → IO UniverseState
  lupe x = IO.bind (♯ poll) $ λ p → ♯ lupe (tick x p)
\end{code}
\end{document}
