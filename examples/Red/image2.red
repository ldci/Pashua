#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua openbrowser
config: copy [
	"*.title = Image Selection"
	"ob.type = openbrowser"
	"ob.width = 400"
	"ob.default = Select a file"
]
str: callPashua config 						;--call Pashua
f: split str "="							;--get filename
imgpath:  "img.path = "  append imgpath trim/all f/2	;--update path command
imglabel: "img.label = " append imglabel trim/all f/2	;--update label command

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


