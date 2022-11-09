#!/usr/bin/env bash

##############################################################
# normalize-eol.sh met à jour les fichiers en format de
# fin de ligne Unix et éventuellement avec un BOM
##############################################################

set -ex

cd "$(dirname "$(readlink -f "$0")")"/../..

find Core Royalty Ideology Biotech Notes \
  \( -name "*.xml" -o -name "*.txt" \) -type f -print0 | \
  xargs -0 dos2unix --keep-bom
