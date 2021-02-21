#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(wc -w "${f}" | cut -d' ' f1)"
    echo "Processing $f file..."
    echo "$SIZE"
  fi
done

