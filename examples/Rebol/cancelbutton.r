#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
	"*.title = Cancel button"
	"cb.type = cancelbutton" 
	"cb.label = Close this dialog"
	"cb.tooltip = Closes this window without returning the values entered"
]
str: callPashua config 	
print str