#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
home: select list-env "HOME"
fpath:  "svb.default = "  append fpath home
;--Commands for Pashua savebrowser
config: copy [
	"*.title = Save File"
	"svb.type = savebrowser"
	"svb.label = Please set the destination path"
	"svb.default = /tmp/foo"
	"svb.filetype = jpg"
	"svb.width = 360"
]
config/4: fpath
str: callPashua config 	
print str