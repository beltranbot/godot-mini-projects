extends Node3D

var score: int = 0

func increase_score(amount):
	score += amount
	print("Score: ", score)
