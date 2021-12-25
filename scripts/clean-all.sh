#!/usr/bin/env sh

# run under main foler or under scripts folder
if [ ! -f "njuvisual.dtx" ]; then
    cd ..
fi

rm *.aux
rm *.auxlock
rm *.dpth
rm *.ins
rm *.log
rm *.md5
rm *.pdf
rm *.sty
rm *.tex
