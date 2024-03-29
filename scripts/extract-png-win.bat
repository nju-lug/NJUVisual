@ECHO OFF

@REM run under current dir
@REM ... or under main folder
IF NOT EXIST "njuvisual.dtx" (
    CD ..
)
@REM ... or under source folder
IF NOT EXIST "njuvisual.dtx" (
    CD source
)

MKDIR "pngfiles"
CD    "pngfiles"

COPY /Y "..\njuvisual*.dtx" .

xetex "njuvisual.dtx" > NUL

pdflatex --shell-escape "njuvisual-example.tex" > NUL

DEL njuvisual-example.pdf

FOR %%A IN (*.pdf) DO "c:\Program Files\Inkscape\bin\inkscape.com" --export-type="png" %%A -h 1000

DEL "*.aux"
DEL "*.auxlock"
DEL "*.dpth"
DEL "*.def"
DEL "*.dtx"
DEL "*.ins"
DEL "*.log"
DEL "*.md5"
DEL "*.pdf"
DEL "*.sty"
DEL "*.tex"

CD ..
