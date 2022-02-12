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
;--include this function in your code
