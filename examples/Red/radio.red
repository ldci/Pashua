#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Radio"
	"radio.type = radiobutton"
	"radio.label = How would you like your coffee?"
	"radio.option = Black"
	"radio.option = With milk"
	"radio.option = With milk and sugar" 
	"radio.option = Only sugar, no milk radio.default = With milk"
	"radio.default = With milk"
]
str: callPashua config 	
print str