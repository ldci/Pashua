#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua
config: [
"tf.type = textfield"
"tf.label = Textfield sample"
"tf.default = Hello World"
"tf.width = 310"
]
str: callPashua config 	
print str
