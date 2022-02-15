#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
;--Commands for Pashua openbrowser
config: copy [
	"*.title = Text file Selection"
	"ob.type = openbrowser"
	"ob.width = 400"
	"ob.default = Select a file"
]
str: split callPashua config "="	
if str/2 <> "Select a file" [
	fName: to-file trim/all str/2
	f: read/lines fName
	foreach line f [append line "[return]"]
	config: copy [
		"*.title = Text Reader"
		"tb.type = textbox"
		"tb.default = none"
		"tb.width = 500"
		"tb.height = 300"
	]
	config/3: append "tb.default = " form f
	callPashua config
] 