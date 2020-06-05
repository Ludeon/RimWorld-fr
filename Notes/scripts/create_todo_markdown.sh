#!/bin/bash

set -e

# Go to project root
cd $(dirname $(readlink -f $0))/../..

SCRIPTDIR="Notes/scripts"

# Files containing "TODO"
rm -f $SCRIPTDIR/list_todo.txt
touch $SCRIPTDIR/list_todo.txt
echo "Files containing TODOs:" > "Notes/scripts/list_todo.txt"
echo "TODOs: $(grep -r 'TODO' * | wc -l) total." >> "Notes/scripts/list_todo.txt"
echo "" >> "Notes/scripts/list_todo.txt"
grep -l -r "TODO" * -z | xargs sh -c 'for arg do echo "- [ ] $arg" >> "Notes/scripts/list_todo.txt"; done' _

# Files changed by last update, with "TODO" or EN texts changed
rm -f $SCRIPTDIR/list_diffname_only.txt
touch $SCRIPTDIR/list_diffname_only.txt
echo "Files changed by last update, with TODO or EN texts changed:" > "Notes/scripts/list_diffname_only.txt"
echo "" >> "Notes/scripts/list_diffname_only.txt"
git diff --name-only HEAD^ | xargs sh -c 'for arg do echo "- [ ] $arg" >> "Notes/scripts/list_diffname_only.txt"; done' _

echo "Please copy markdown texts where needed then delete after use:
$SCRIPTDIR/list.txt and $SCRIPTDIR/list_diffname_only.txt."
