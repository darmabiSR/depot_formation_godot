@abstract
class_name Poussable extends StaticBody2D

@export var position_initiale = Vector2(100,100)

@abstract
func pousser(direction : Vector2)

func reinitialiser():
	position = position_initiale
