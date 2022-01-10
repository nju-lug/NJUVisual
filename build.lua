#!/usr/bin/env texlua

-- Build script for njuvisual.
-- run with `l3build`

module       = "njuvisual"

sourcefiles  = {"*.dtx"}
installfiles = {"*.sty"}
textfiles    = {"LICENSE", "*.md", "*.ins"}
ctanreadme   = "README-CTAN.md"

unpackexe    = "xetex"
unpackfiles  = {"njuvisual.dtx"}

typesetexe   = "xelatex"
typesetfiles = {"njuvisual.dtx"}
