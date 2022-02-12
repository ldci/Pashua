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


config: copy [
"# Set window title"
"*.title = Welcome to Pashua Rebol and Red"
"# Introductory text"
"txt.type = text"
"txt.default = Pashua is an application for generating dialog windows from programming languages which lack support for creating native GUIs on Mac OS X. Any information you enter in this example window will be returned to the calling script when you hit “OK”; if you decide to click “Cancel” or press “Esc” instead, no values will be returned.[return][return]This window shows nine of the UI element types that are available. You can find a full list of all GUI elements and their corresponding attributes in the documentation (➔ Help menu) that is included with Pashua."
"txt.height = 276"
"txt.width = 310"
"txt.x = 340"
"txt.y = 44"
"txt.tooltip = This is an element of type “text”"
"# Add a text field"
"tf.type = textfield"
"tf.label = Example textfield"
"tf.default = Textfield content"
"tf.width = 310"
"tf.tooltip = This is an element of type “textfield”"
"# Add a filesystem browser"
"ob.type = openbrowser"
"ob.label = Example filesystem browser (textfield + open panel)"
"ob.width=310"
"ob.tooltip = This is an element of type “openbrowser”"
"# Define radiobuttons"
"rb.type = radiobutton"
"rb.label = Example radiobuttons"
"rb.option = Radiobutton item #1"
"rb.option = Radiobutton item #2"
"rb.option = Radiobutton item #3"
"rb.tooltip = This is an element of type “radiobutton”"
"# Add a popup menu"
"pop.type = popup"
"pop.label = Example popup menu"
"pop.width = 310"
"pop.option = Popup menu item #1"
"pop.option = Popup menu item #2"
"pop.option = Popup menu item #3"
"pop.default = Popup menu item #2"
"pop.tooltip = This is an element of type “popup”"
"# Add 2 checkboxes"
"chk.rely = -18"
"chk.type = checkbox"
"chk.label = Pashua offers checkboxes, too"
"chk.tooltip = This is an element of type “checkbox”"
"chk.default = 1"
"chk2.type = checkbox"
"chk2.label = But this one is disabled"
"chk2.disabled = 1"
"chk2.tooltip = Another element of type “checkbox”"
"# Add a cancel button with default label"
"cb.type = cancelbutton"
"cb.tooltip = This is an element of type “cancelbutton”"
"db.type = defaultbutton"
"db.tooltip = This is an element of type “defaultbutton” (which is automatically added to each window, if not included in the configuration)"
"img.type = image"
"img.x = 435"
"img.y = 248"
"img.maxwidth = 128"
"img.tooltip = This is an element of type “image”"
"img.path = /Applications/Pashua.app/Contents/Resources/AppIcon@2.png"
]

str: callPashua config
print str