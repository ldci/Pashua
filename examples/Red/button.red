#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Button"
	"b.type = button" 
	"b.label = Test"
]
str: callPashua config 	
print str