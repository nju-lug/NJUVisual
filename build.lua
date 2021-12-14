#!/usr/bin/env texlua

-- Build script for njuvisual.
-- run with `l3build`

module       = "njuvisual"

checkengines = {"xetex", "luatex"}
checkopts    = "-interaction=batchmode"

textfiles    = {"LICENSE", "*.md"}
ctanreadme   = "README-CTAN.md"

sourcefiles  = {"*.dtx"}
installfiles = {"*.sty"}

typesetexe   = "xelatex"
typesetfiles = {"njuvisual.dtx"}

unpackexe    = "xetex"
unpackfiles  = {"njuvisual.dtx"}
