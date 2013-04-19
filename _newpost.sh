#!/bin/sh
#
# Idea from https://github.com/likang/blogofile/blob/master/_new.sh
#
# TODO
#   --help
#   --format={markdown,...}

show_usage()
{
    echo "Utilisation : $(basename $0) TITRE
Cree un nouveau post a editer, au format markdown.

TITRE devrait etre protege par des quotes, et eventuellement echappe
autant que necessaire."
    exit 0
}

if [ ! -d _controllers ]; then
    echo "T'es perdu la coco. Lance-moi depuis la racine du depot Git !" >&2
    exit 1
fi

if [ $# -eq 0 ]; then
    echo "Error: no args." >&2
    show_usage
    exit 1
fi



#
# magic happens here.
#

postdate=$(date '+%G-%m-%d')
posttitle=$(echo "$1" | tr -s '[:blank:][:punct:]' '-')     # filenames that suck less.
postfile="_posts/${postdate}-${posttitle}.markdown"

echo "\
---
categories:
date: $(date '+%G/%m/%d %H:%M:%S')
title: $1
author: $(whoami)
summary: \"I was too lame to edit the summary.\"
---" >> "$postfile"

if [ ! -x "$EDITOR" ]; then
    echo "Votre (debut de) post : $postfile"
else
    $EDITOR "$postfile"
fi
