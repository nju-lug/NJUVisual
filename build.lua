#!/usr/bin/env texlua

-- Build script for njuvisual.
-- run with `l3build`

module        = "njuvisual"

sourcefiledir = "source"
sourcefiles   = {"*.dtx"}
installfiles  = {"*.sty", "*.def"}
textfiles     = {"LICENSE", "*.md", "*.ins"}
ctanreadme    = "README-CTAN.md"

unpackexe     = "xetex"
unpackfiles   = {"njuvisual.dtx"}

typesetexe    = "xelatex"
typesetfiles  = {"njuvisual.dtx"}
