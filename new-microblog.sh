#!/bin/bash
# create a new microblog post based on date and time
FOLDER="$(date +'%Y%m%d')"
FILENAME="$(date +'%H%M%S')"

hugo new microblog/$FOLDER/$FILENAME.md
cd content/microblog/$FOLDER
codium $FILENAME.md
