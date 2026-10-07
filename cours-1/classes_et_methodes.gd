extends Node2D

#recuperation d'une instance de JeanYvesTourneret
@onready var jean_yves : JeanYvesTourneret = $jean_yve


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("r"):
		#appel de la methode tourner de l'objet jean_yves appartenant à la classe JeanYvesTourneret
		jean_yves.tourner()
		
	if Input.is_action_just_pressed("p"):
		#appel d'une methode avec un parametre
		jean_yves.parler("j'ai perdu")
		
	if Input.is_action_just_pressed("plus"):
		#modification d'une propriete de jean_yves
		jean_yves.aura += 1000
		
	if Input.is_action_just_pressed("a"):
		jean_yves.afficher_aura()
