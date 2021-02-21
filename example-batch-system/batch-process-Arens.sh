#! /bin/sh
echo "$1"/*
for f in $1/*; do
  echo "$f"
  if [ -f $f ]; then
    SIZE="$(du -sh "${f}" | cut -f 1)"
    WORD="$(wc -w "${f}" | cut -d ' ' -f 1)"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word Count: $WORD"
  fi
done

