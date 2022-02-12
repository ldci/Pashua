#!/usr/local/bin/r3
REBOL [
]
;--generic function for Pashua running
callPashua: function [
	commands 	[block!]
	return: 	[string!]
][
	pashua: copy "/Applications/Pashua.app/Contents/MacOS/Pashua " ;--Pashua location 
	confile: copy system/options/home		;--we create a temp configuration file
	append confile "conf.pash"				;--in user directory
	configFile: to-file confile				;--temp file
	returnStr: ""							;--string for return values
	write/lines configFile commands			;--write commands in tmp file as lines 	
	append pashua to-string configFile		;--add Pashua commands file
	call/shell/output pashua returnStr		;--call Pashua and get return values
	rm configFile							;--remove tmp file
	returnStr								;--return values as a string 
]

;--Commands for Pashua openbrowser
config: copy [
	"*.title = Image Selection"
	"ob.type = openbrowser"
	"ob.width = 400"
	"ob.default = Select a file"
]
str: callPashua config 						;--call Pashua
f: split str "="							;--get filename
imgpath:  join "img.path = "  trim/all f/2	;--update path command
imglabel: join "img.label = " trim/all f/2	;--update label command

;--Commands to show selected image
config: copy [
	"*.title = Image Viewer"
	"img.type = image"
	"img.label = none"
	"img.path = none"
	"img.maxwidth = 384"
	"img.border = 1"
]

unless none? f [
	config/3: imglabel						;--update filename label 
	config/4: imgpath						;--update filename path 
	str: callPashua config					;--call Pashua				
]


