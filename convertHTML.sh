#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <notebook-file>"
  exit 1
fi

NOTEBOOK_FILE="$1"
OUTPUT_DIR="./docs"
OUTPUT_NAME="page"

# Run nbconvert to convert the notebook to HTML
# jupyter nbconvert --output-dir="$OUTPUT_DIR" --output="$OUTPUT_NAME" --to html "$NOTEBOOK_FILE"

# TEMPLATE_DIR="./templates"
TEMPLATE_NAME="./templates/iframe_template"

# Run nbconvert with the custom template
jupyter nbconvert --output-dir="$OUTPUT_DIR" --output="$OUTPUT_NAME" \
  --to html --template-file "$TEMPLATE_NAME.tpl" "$NOTEBOOK_FILE"
