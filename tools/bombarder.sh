#!/bin/sh

for site in "$@"
do
  docker run -d -ti --rm alpine/bombardier -c 1000 -d 3600s -l $site
done
