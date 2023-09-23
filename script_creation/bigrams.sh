#!/usr/bin/env bash
# This program should take an fileIn as first parameter
# It takes the input text file and outputs the 5 most common word bigrams (https://en.wikipedia.org/wiki/Bigram) in the file.
# Your solution should be case insensitive.
#
# example: when `./bigrams.sh ../data/myBook/01-chapter1.txt' is ran the output should look like this:
#   3 the     little
#   3 little  blind
#   3 blind   text
#   2 the     word
#   2 the     copy

if [ $# -eq 0 ]; then
  echo "Usage: $0 <fileIn>"
  exit 1
fi

fileIn="$1"

if [ ! -f "$fileIn" ]; then
  echo "Error: File '$fileIn' not found."
  exit 1
fi

cat "$fileIn" | tr '[:upper:]' '[:lower:]' | tr -s '[:punct:][:space:]' ' ' | \
  awk '{ for (i = 1; i < NF; i++) { if ($i != "" && $(i+1) != "") print $i, $(i+1) } }' | \
  sort | uniq -c | sort -nr | head -n 5 | awk '{print $1, $2, $3}'