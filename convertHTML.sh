#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <notebook-file>"
  exit 1
fi

NOTEBOOK_FILE="$1"
OUTPUT_DIR="./docs"
OUTPUT_NAME="index"

# Run nbconvert to convert the notebook to HTML
jupyter nbconvert --output-dir="$OUTPUT_DIR" --output="$OUTPUT_NAME" --to html "$NOTEBOOK_FILE"
