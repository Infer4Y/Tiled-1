extends Area

onready var player = get_node("../player/KinematicBody")

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Area_body_entered(body):
	print (body)
	print (player)
	if body == player: get_tree().change_scene("res://levels/level2.tscn")