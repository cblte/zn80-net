#!/bin/bash
# create a new microblog post based on date and time

# check if a title has been provided
if [[ $# == "0" ]]; then
    echo ""
    echo "Error: Missing parameter. Add at least a title in quotes"
    echo ""
    echo "Example:"
    echo ""
    echo "  bash new-blog.sh \"This is my post title\""
    exit 1
fi

# Post title
# if more than one argument is provided then TITLE is the last argument
if [ $# -gt 1 ]; then
  TITLE=${@: -1}
  # if only one argument is provided then it is the Title
else
  TITLE=$1
fi

# Define the post directory (where to create the file)
HUGO_POSTS_DIR='content/blog/'
SUB_FOLDER="$(date +'%Y-%m')/"

# Create foldername for post from passed parameter
TITLE_STRIPPED=${TITLE// /-}
## make all lowercase

TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/Ä/Ae/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/Ü/Ue/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/Ö/Oe/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/ä/ae/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/ü/ue/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/ö/oe/g')
TITLE_STRIPPED=$(echo $TITLE_STRIPPED | sed -E 's/[~^]+//g' | sed -E 's/[^a-zA-Z0-9]+/-/g' | sed -E 's/^-+|-+$//g')
TITLE_STRIPPED=$(tr A-Z a-z <<< $TITLE_STRIPPED)

# put together
DATE="$(date +%Y-%m-%d)"
POST_FOLDER=${DATE}-${TITLE_STRIPPED}


# Full path to the blog post
BLOGPOST_FOLDER=${HUGO_POSTS_DIR}${SUB_FOLDER}${POST_FOLDER}

HUGO_DATE=$(date +'%Y-%m-%dT%T%z')
# COMMANDS
#######################################################

# Create the directory and file but first check if it exists
if [[ -d "${BLOGPOST_FOLDER}" ]]; then
  echo "Blog post with title already exists"
  exit 1
fi

mkdir -p ${BLOGPOST_FOLDER}
touch ${BLOGPOST_FOLDER}/index.md

# add YAML front matter

echo -e "---
title: \"${TITLE}\"
slug: \"${TITLE_STRIPPED}\"
date: \"${HUGO_DATE}\"
tags:
- 100 Days To Offload
100dto:
categories:
- 100 Days To Offload - Season 2
draft: true

# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}}
---

Insert Text here

<!--more-->
" > ${BLOGPOST_FOLDER}/index.md

codium ${BLOGPOST_FOLDER}/index.md
