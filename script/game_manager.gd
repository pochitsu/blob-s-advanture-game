extends Node

var score = 0
@onready var score_1 = $score1

func add_point():
	score += 1
	score_1.text = "You collected " + str(score) + " water!"
	
