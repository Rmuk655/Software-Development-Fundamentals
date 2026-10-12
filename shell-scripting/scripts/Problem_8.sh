#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: spellcheck filename" >&2
    exit 1
fi
# Use the system dictionary when present, otherwise the words.txt shipped next to this script.
dict=/usr/share/dict/words
[ -r "$dict" ] || dict="$(dirname "$0")/words.txt"
if [ ! -r "$dict" ]; then
    echo "No word list found (install a dictionary package or provide words.txt)" >&2
    exit 1
fi
for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "Error: $file does not exist. Skipping..." >&2
        continue
    fi
    spelling_file="${file}.spelling"
    if [ -f "$spelling_file" ]; then
        echo "Replacing existing spelling file: $spelling_file"
        rm "$spelling_file"
    else
        echo "Creating new spelling file: $spelling_file"
    fi
    total_words=0
    unique_words=0
    while read -r word; do
        clean_word=$(echo "$word" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
        if [[ -z "$clean_word" ]]; then
            continue
        fi
        ((total_words++))
        if ! grep -qi "^${clean_word}$" "$dict"; then
            echo "$clean_word" >> "$spelling_file"
        fi
    done < <(tr ' ' '\n' < "$file")
    if [ -f "$spelling_file" ]; then
        unique_words=$(sort -u "$spelling_file" | wc -l)
    fi
    echo "Completed processing $file: Total words = $total_words, Unique misspelled words = $unique_words"
done
exit 0