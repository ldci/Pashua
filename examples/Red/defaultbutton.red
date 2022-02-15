#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Default Button"
	"db.type = defaultbutton" 
	"db.label = Click here to close the window and save the values"
]
str: callPashua config 	
print str