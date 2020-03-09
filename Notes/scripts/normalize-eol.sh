#!/usr/bin/env bash
set -ex

cd $(dirname $(readlink -f $0))/../..

find Core Royalty Notes -name "*.xml" -o -name "*.txt" | xargs dos2unix --keep-bom
