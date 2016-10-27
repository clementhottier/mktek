#!/bin/bash
# Clement Hottier
# mai 18 CEST
# script in order to generate Latex source file
# commande execution : bash mktex.sh


if [[ $1 == '-h' || $1 == "--help" || $# -ne 2  ]]
then
  echo -e "\n    this script accept tow argument :"
  echo -e "        -The type of the document you want (article, report, beamer, lettre)"
  echo -e "        -The name of the file\n" 
  exit 0
fi

if [ -e $2.tex ]
then
  echo -e "\n    ERROR : file $2.tex already exist\n"
  exit 1
fi

echo $PATHMKTEX

case $1 in
  "article")
    cp $PATHMKTEX/article.tex $PWD/$2.tex
    echo -e "\n    Creation of $2.tex\n"
    ;;

  "report")
    cp $PATHMKTEX/report.tex $PWD/$2.tex
    echo -e "\n    Creation of $2.tex\n"
    ;;

  "beamer")
    cp $PATHMKTEX/beamer.tex $PWD/$2.tex
    echo -e "\n    Creation of $2.tex\n"
    ;;

  "lettre")
    cp $PATHMKTEX/lettre.tex $PWD/$2.tex
    echo -e "\n    Creation of $2.tex\n"
    ;;

  *)
  echo -e "\n    this script accept tow argument :"
  echo -e "        -The type of the document you want (article, report, beamer, lettre)"
  echo -e "        -The name of the file\n" 
  exit 0
  ;;

esac








exit 0
