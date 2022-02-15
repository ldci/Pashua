#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
	"*.title = Button"
	"b.type = button" 
	"b.label = Test"
]
str: callPashua config 	
print str