extends Node

var current_level = 1



var level_1 = [
	[0, 2, 2, 2, 2, 0],
	[1, 0, 1, 1, 0, 1]
]

var level_2 = [
	[3, 3, 3, 3, 3, 3, 3],
	[2, 0, 2, 0, 2, 0, 2],
	[0, 1, 0, 1, 0, 1, 0]
]

var level_3 = [
	[5,0,5,0,5,0,5],
	[0,5,0,4,0,5,0],
	[0,0,5,5,5,0,0],
	[2,0,2,0,4,0,2],
	[0,1,0,1,0,1,0]
]

var levels = [level_1, level_2, level_3]

func get_current_level():
	return levels[current_level - 1]
