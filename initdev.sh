#!/bin/bash
if [ -z $1 ]
then 
echo "expected arguments, please check the help : initdev --help."
exit 1;
elif [ "$1" = "--help" ]
then echo "Name: $0 est une application permettant d'entamer la création d'un nouveau projet, donc d'un répertoire contenant les fichiers nécessaires;
Syntax: ./initdev.sh -nomproj -licenses -arguments ;
Arguments: --c : Projet en C
           --cpp        : Projet en C++
           --py         : Projet en python
           --latex      : Projet de rédaction en Latex
           --beamer     : Projet de présentation en Beamer" 
echo "Licenses prises en charge par le programme : GPL et MIT"
echo "BETROUNI Zhor Nesrine"
echo "Email : Betrouni.nesrine@outlook.fr"
exit 1;


elif [ "$2" != "MIT" ] && [ "$2" != "GPL" ] && [ -n "$2" ]
then 
echo " Unknown arguments , please check the help : initdev --help"
exit 1;


else 
if [ -z $3 ]
then 
mkdir "$1"
cd $1
touch main
echo "Type de projet non spécifié, pour informations, veuillez consultez : initdev --help"


elif [ "$3" = "--c" ]
then
mkdir "$1"
cd $1
touch main.c
echo " Projet en C "


elif [ "$3" = "--cpp" ]
then 
mkdir "$1"
cd $1
touch main.cpp
echo "Projet en C++"


elif [ "$3" = "--py" ]
then
mkdir "$1"
cd $1
touch main.py
echo " projet en python "


elif [ "$3" = "--latex" ]
then 
mkdir "$1"
cd $1
touch main.tex
echo " Projet en latex"


elif [ "$3" = "--beamer" ]
then 
mkdir "$1"
cd $1
touch main.tex
echo " Projet en présentation Beamer"
else echo "Extension non reconnue , veuillez regardez le help : initdev --help"
exit 1; 
fi
touch license.txt
touch MAKEFILE
echo "Succés! répértoire du projet $1 crée."
fi

if [ "$2" = "GPL" ]
then
echo "GPL: General Public License" > license.txt
echo " Avec license : GPL "
elif [ "$2" = "MIT" ] 
then echo "MIT : License MIT" > license.txt
echo "Avec license : MIT " 
elif [ -z "$2" ]
then echo " Aucune license attribuée au projet "
else echo "Unknown Arguments , please check the help : initdev --help "
fi

