#!/bin/bash

rec_find() {
    local f
    for f in "$1"/*; do
        [[ -d $f ]] && echo "Directory: $f" && rec_find "$f"
        [[ -f $f ]] && echo "File: $f"
    done
}

rec_find "$1"

