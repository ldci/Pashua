#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Popup"
	"p.type = popup"
  	"p.label = Your favored language"
  	"p.width = 310"
  	"p.option = Red"
  	"p.option = Red/System"
  	"p.option = Rebol 3"
  	"p.option = Rebol 2"
  	"p.default = Red/System"
]
str: callPashua config 	
print str