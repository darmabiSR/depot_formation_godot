class_name JeanYvesTourneret extends Node2D

#les propriete de la classe :
var aura : int = 1000000


#les méthodes de la classe :
func tourner():
	rotation += 0.5

func parler(texte : String):
	$Label.text = texte

func afficher_aura():
	$Label.text =  "aura : " + str(aura)
