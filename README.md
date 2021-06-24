# polybar-clockodo

A polybar tool to check what's your current task in clockodo.

## Usage
Before use - update script with your API key and email.

Module description
```
[module/clockodo]                                                             
type = custom/script                                                          
exec = path/to/script/clockodo.sh                                              
interval = 10                                                                 
label-font = 2                                                                
click-left = path/to/script/clockodo.sh --open
```
