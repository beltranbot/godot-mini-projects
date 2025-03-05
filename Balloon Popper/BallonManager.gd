extends Node3D

var _score: int = 0
@export var _score_text: Label

func increase_score(amount):
	_score += amount
	_score_text.text = str("Score: " , _score)
