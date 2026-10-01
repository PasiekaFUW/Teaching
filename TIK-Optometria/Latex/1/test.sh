#!/bin/bash

# 1. communication
echo "this is a script"

# 2. variables
NAME=$1 #pierwszy argument
echo "Creating, $NAME!"

# 3. terminal actions
mkdir -p "$NAME" && cd "$NAME"
pwd
# right now we are in the folder created by the script and can simplify the paths

# 4. creating project structure
mkdir -p latex data scripts plots texts

# 5. creating files 
touch texts/test.txt
cat <<EOF > texts/test.txt
This is a test file for $NAME project.
EOF

# 6. creating a simple LaTeX template
touch latex/$NAME.tex
cat <<EOF > latex/$NAME.tex
\documentclass{article}
\usepackage{graphicx} % Required for inserting images
\usepackage[utf8]{inputenc} % poza overleaf wymagane
\usepackage{polski} % polskie znaki
\usepackage{hyperref}

\title{Przykład 1}
\author{Moje imię i nazwisko}
\date{12 Marca 2026}

\begin{document}

\maketitle
\tableofcontents
\section{Wstęp}
Przykładowy wstęp.

\begin{thebibliography}{}

    \bibitem{Klucz}
    \href{}{Nazwisko Imię, \textit{Tytuł italic}, wydawnictwo, rok.}

\end{thebibliography}

\end{document}

EOF