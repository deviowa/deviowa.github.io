#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR;

gitbook build $DIR --output=$DIR/dist

rsync -e "ssh" -avz $DIR/dist/* root@deviowa.io:/var/www/_book/ 
