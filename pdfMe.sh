#!/bin/bash
set -e

SITE_URL=$1
PDF_NAME=$2

if [ ! -z "$SITE_URL" ] || [ ! -z "$PDF_NAME" ]; then
  echo "Downloading $SITE_URL as $PDF_NAME..."
  docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/pandoc --name pandoc1 hejwo/pandoc-web-to-pdf-util \
  pandoc --highlight-style tango --pdf-engine=xelatex -V geometry:margin=1.5cm -s -r html $SITE_URL -o $PDF_NAME
else
  echo "Usage: pdfMe http://site.to.download.com pdf-name.pdf"
fi


