extends Node


var keys  = 0

func collect_key():
	keys += 1
	
	
	
func use_key():
	if(keys >= 0):
		keys -= 1
