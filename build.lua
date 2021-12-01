#!/usr/bin/env texlua

-- Build script for njuvisual.
-- run with `l3build`

module = "njuvisual"

checkengines = {"xetex", "luatex"}
checkopts    = "-interaction=batchmode"

ctanreadme = "README-CTAN.md"

sourcefiles  = {"*.dtx"}
installfiles = {"*.sty"}

typesetexe   = "xelatex"
typesetfiles = {"njuvisual.dtx"}

unpackfiles = {"njuvisual.dtx"}
unpackexe   = "xetex"
