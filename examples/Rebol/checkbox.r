#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
	"*.title = Checkbox"
	"chk.type = checkbox"
	"chk.label = If you like, you can use a really long label, as the window will scale accordingly"
	"chk.tooltip = Yes, it’s that simple!"
	"chk2.type = checkbox"
	"chk2.label = A second checkbox"
]
str: callPashua config 	
print str