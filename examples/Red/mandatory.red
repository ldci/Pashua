#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
	"*.title = Mandatory Demo"
	"tf.type = textfield"
	"tf.label = This field must not be empty"
	"tf.mandatory = true"
	"tf.width = 310"
]
str: callPashua config 	
print str
