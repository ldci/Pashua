#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
do %pashua.r
;--Commands for Pashua
config: [
	"*.title = Password"
	"pw.type = password"
	"pw.label = Please enter your password" 
	"pw.default = Secret!"
	"pw.width = 160"
]
str: callPashua config 	
print str
