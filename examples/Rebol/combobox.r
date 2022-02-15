#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
	"*.title = Combobox"
	"cb.type = combobox"
  	"cb.label = Your favored language"
  	"cb.width = 310"
  	"cb.option = Red"
  	"cb.option = Red/System"
  	"cb.option = Rebol 3"
  	"cb.option = Rebol 2"
  	"cb.tooltip = Choose from the list or enter another name"
  	"cb.default = Red"
]
str: callPashua config 	
print str