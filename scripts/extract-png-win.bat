@ECHO OFF

@REM run under main foler or under scripts folder
IF NOT EXIST "njuvisual.dtx" (
    CD ..
)

MKDIR "pngfiles"
CD    "pngfiles"

COPY /Y "..\njuvisual.dtx"                 .
COPY /Y "..\njuvisual-curves.dtx"          .

xetex "njuvisual.dtx" > NUL

pdflatex --shell-escape "njuvisual-example.tex" > NUL

DEL njuvisual-example.pdf

FOR %%A IN (*.pdf) DO "c:\Program Files\Inkscape\bin\inkscape.com" --export-type="png" %%A -h 1000

DEL "*.aux"
DEL "*.auxlock"
DEL "*.dpth"
DEL "*.dtx"
DEL "*.ins"
DEL "*.log"
DEL "*.md5"
DEL "*.pdf"
DEL "*.sty"
DEL "*.tex"

CD ..
