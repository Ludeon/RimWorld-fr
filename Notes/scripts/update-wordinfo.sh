#!/usr/bin/env bash

########################################
# Fonctions
########################################
# Elles permettent surtout de rendre le script plus lisible

# Supprime BOM, commentaires et lignes vides du flux
clean() { sed -e 's/\xEF\xBB\xBF/\n/' | grep -av '^//' | grep -avE '^[[:space:]]*$' ; }

# Supprime du flux les lignes présentes dans le fichier passé en 1er argument
exclude() { grep -avxFf "$1" ; }

# Ne conserve du flux que les lignes présentes dans le fichier passé en 1er argument
intersect() { grep -axFf "$1" ; }

# Supprime les doublons du flux
unique() { sort --unique ; }

# Extrait du flux le contenu des tags utilisés par le système de traduction
extract_tag_content() { grep -aE '\.(label|pawnSingular|pawnsPlural)>' | sed 's/^.*>\([^<]*\)<.*$/\1/' ; }

# Passe tout en minuscule
to_lowercase() { PERLIO=:utf8 perl -ne 'print lc $_' ;  }

########################################
# Début du script
########################################
set -ex

# Va à la racine du projet
cd $(dirname $(readlink -f $0))/../..

# Créer un répertoire de travail et s'assure qu'il soit supprimé à la fin
# WORKDIR=$(mktemp -d)
# trap "rm -rf $WORKDIR" EXIT
WORKDIR=.tmp
mkdir -p $WORKDIR

# Force la langue pour les outils qui en tiennent compte
export LANG=fr_FR.UTF-8 LC_ALL=fr_FR.UTF-8

# Liste des tags provenant du XML
cat DefInjected/{PawnKind,Faction,Thing,WorldObject}Def/*.xml | extract_tag_content | to_lowercase | unique > $WORKDIR/all

# Liste des mots déjà classés
cat WordInfo/Gender/{Male,Female}.txt | unique > $WORKDIR/wordinfo

# Ajoute les nouveaux mots dans WordInfo/Gender/new_words.txt
exclude $WORKDIR/wordinfo < $WORKDIR/all | unique > WordInfo/Gender/new_words.txt

# Supprime les mots obsolètes des fichiers WordInfo/Gender/{Male,Female}.txt
for GENDER in Male Female; do
  intersect $WORKDIR/all < WordInfo/Gender/$GENDER.txt > $WORKDIR/$GENDER.txt
  mv $WORKDIR/$GENDER.txt WordInfo/Gender/$GENDER.txt
done
