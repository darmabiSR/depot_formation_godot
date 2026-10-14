extends Camera2D

const MIN = Vector2(-50, -300)
const MAX = Vector2(-1000, -2000)
const LARGEUR_FENETRE = 1152
const HAUTEUR_FENETRE = 648

@onready var perso = $"../CharacterBody2D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
