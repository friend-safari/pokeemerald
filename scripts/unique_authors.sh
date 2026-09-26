#!/bin/bash

# Find a unique list of authors since a certain data/commit
# TODO: Find list of associated GitHub usernames also

set -e # exit on (e)rror
# set -x

SINCE="$1"
shift

AUTHORS=$(git log --since="$SINCE" --format="%an" | sort -u)
echo "$AUTHORS"

set +x