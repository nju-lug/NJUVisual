#!/usr/bin/env sh

mkdir -p "pngfiles"
cd "pngfiles"

cp -f "../njuvisual.dtx"            .
cp -f "../njuvisual-curves.dtx"     .

xetex "njuvisual.dtx" > /dev/null

pdflatex --shell-escape "njuvisual-example.tex" > /dev/null

inkscape --export-type="png" nju-*.pdf -h 1000

rm *.aux
rm *.auxlock
rm *.dpth
rm *.dtx
rm *.ins
rm *.log
rm *.md5
rm *.pdf
rm *.sty
rm *.tex

cd ..
