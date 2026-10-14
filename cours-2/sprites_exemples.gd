extends Node2D

@onready var fleche = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		fleche.frame = 0
	if Input.is_action_just_pressed("ui_right"):
		fleche.frame = 1
	if Input.is_action_just_pressed("ui_down"):
		fleche.frame = 2
	if Input.is_action_just_pressed("ui_left"):
		fleche.frame = 3
