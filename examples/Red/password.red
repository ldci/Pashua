#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
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
