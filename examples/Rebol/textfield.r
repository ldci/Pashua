#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
"tf.type = textfield"
"tf.label = Textfield sample"
"tf.default = Hello World"
"tf.width = 310"
]
str: callPashua config 	
print str
