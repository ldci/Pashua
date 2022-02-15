#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Cancel button"
	"cb.type = cancelbutton" 
	"cb.label = Close this dialog"
	"cb.tooltip = Closes this window without returning the values entered"
]
str: callPashua config 	
print str