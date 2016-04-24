#!/bin/bash
DIR=`dirname "$0"`

chef --root=$DIR purge
chef --root=$DIR bake --config=production --output=blog --force

ghp-import -n -m "Publishing kinoshita.eti.br" -p -r origin -b gh-pages blog 
