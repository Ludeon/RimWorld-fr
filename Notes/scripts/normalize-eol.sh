#!/usr/bin/env bash
set -ex

cd $(dirname $(readlink -f $0))/../..

find Backstories DefInjected Keyed Notes Strings -name "*.xml" -o -name "*.txt" | xargs dos2unix --keep-bom
