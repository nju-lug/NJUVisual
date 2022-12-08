#!/usr/bin/env sh

# run under current dir
# ... or under main folder
if [ ! -f "njuvisual.dtx" ]; then
    cd ..
fi
# ... or under source folder
if [ ! -f "njuvisual.dtx" ]; then
    cd source
fi

mkdir -p "pngfiles"
cd "pngfiles"

cp -f "../njuvisual*.dtx" .

xetex "njuvisual.dtx" > /dev/null

pdflatex --shell-escape "njuvisual-example.tex" > /dev/null

rm njuvisual-example.pdf

inkscape --export-type="png" nju-*.pdf -h 1000

rm *.aux
rm *.auxlock
rm *.dpth
rm *.def
rm *.dtx
rm *.ins
rm *.log
rm *.md5
rm *.pdf
rm *.sty
rm *.tex

cd ..
