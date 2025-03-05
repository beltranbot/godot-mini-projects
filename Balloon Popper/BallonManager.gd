extends Node3D

var _score: int = 0

func increase_score(amount):
	_score += amount
	print("Score: ", _score)
