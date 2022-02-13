#!/usr/local/bin/red
Red [
]
;--generic function for Pashua running
do %pashua.red
d: "d.default = " 
append append append d to-string now/date " " to-string now/time
config: copy [
"d.type = date"
"d.label = Today" 
"d.default = none" 
"d.time = 1"
]
config/3: d
str: callPashua config
print str