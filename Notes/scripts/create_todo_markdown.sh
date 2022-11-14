#!/bin/bash

##############################################################
# create_todo_markdown.sh met à jour deux listes des fichiers
# qui contiennent le mot-clé TODO.
#   Notes/scripts/list_todo.txt : tous les fichiers concernés
#   Notes/scripts/list_diffname_only.txt : les derniers modifiés
##############################################################

set -e

# Go to project root
cd "$(dirname "$(readlink -f "$0")")"/../..

SCRIPTDIR="Notes/scripts"

shopt -s extglob

rm -f $SCRIPTDIR/list_todo.txt
touch $SCRIPTDIR/list_todo.txt

# !(Notes) : Files containing "TODO" except the ones in Notes folder
echo "Files containing TODOs:" > "Notes/scripts/list_todo.txt"
echo "TODOs: $(grep -r 'TODO' ./!(Notes) | wc -l) total." >> "Notes/scripts/list_todo.txt"
echo "" >> "Notes/scripts/list_todo.txt"
grep -l -r "TODO" ./!(Notes) -z | xargs /bin/sh -c 'for arg do echo "- [ ] $arg" >> "Notes/scripts/list_todo.txt"; done' _

# Files changed by last update, with "TODO" or EN texts changed
rm -f $SCRIPTDIR/list_diffname_only.txt
touch $SCRIPTDIR/list_diffname_only.txt
echo "Files changed by last update, with TODO or EN texts changed:" > "Notes/scripts/list_diffname_only.txt"
echo "" >> "Notes/scripts/list_diffname_only.txt"
git diff --name-only HEAD^ | xargs /bin/sh -c 'for arg do echo "- [ ] $arg" >> "Notes/scripts/list_diffname_only.txt"; done' _

# User can copy the markdown texts where needed
# (ex. in an todo-list issue on github) then delete after use
echo "create_todo_markdown.sh : in $SCRIPTDIR/list.txt and $SCRIPTDIR/list_diffname_only.txt."
