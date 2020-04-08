#!/bin/bash
set -e

SITE_URL=$1
PDF_NAME=$2

if [ ! -z "$SITE_URL" ] || [ ! -z "$PDF_NAME" ]; then
  docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/pandoc --name a2 pandoc-util \
  pandoc --highlight-style tango --pdf-engine=xelatex -V geometry:margin=1.5cm -s -r html $SITE_URL -o $PDF_NAME
else
  echo "Usage: pdfMe http://site.to.download pdf-name.pdf"
fi


