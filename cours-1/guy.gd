extends CharacterBody2D

const SPEED = 100
const ACC = 60.0

#animation
var face_direction = Vector2(0,0)
var pousser = false
@onready var anim = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	
	#mouvement de base
	var direction_x := Input.get_axis("ui_left", "ui_right")
	if direction_x:
		velocity.x = move_toward(velocity.x, direction_x * SPEED, ACC)
	else:
		velocity.x = move_toward(velocity.x, 0, ACC)
	var direction_y := Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity.y = move_toward(velocity.y, direction_y * SPEED, ACC)
	else:
		velocity.y = move_toward(velocity.y, 0, ACC)
	#direction de regard
	if (direction_x || direction_y):
		face_direction = Vector2(direction_x,direction_y).rotated(-0.05)
	animation()
	
	pousser = false
	var colls = move_and_collide(velocity * delta)
	if colls != null:
		var collider = (colls.get_collider() as Poussable)
		if collider != null:
			pousser = true
			collider.pousser(- colls.get_normal() * delta * SPEED / 2)
			if collider.has_method("illuminer") && Input.is_action_just_pressed("ui_accept"):
				collider.illuminer()
			
func animation():
	if velocity.length() < 0.05:
		if face_direction.abs().x > face_direction.abs().y:
			if face_direction.x < 0:
				anim.play("idle_gauche")
			else :
				anim.play("idle_droite")
		else:
			if face_direction.y < 0:
				anim.play("idle_haut")
			else :
				anim.play("idle_bas")
	elif !pousser:
		if face_direction.abs().x > face_direction.abs().y:
			if face_direction.x < 0:
				anim.play("marche_gauche")
			else :
				anim.play("marche_droite")
		else:
			if face_direction.y < 0:
				anim.play("marche_haut")
			else :
				anim.play("marche_bas")
	else :
		if face_direction.abs().x > face_direction.abs().y:
			if face_direction.x < 0:
				anim.play("push_gauche")
			else :
				anim.play("push_droite")
		else:
			if face_direction.y < 0:
				anim.play("push_haut")
			else :
				anim.play("push_bas")
