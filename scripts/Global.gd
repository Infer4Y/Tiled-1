extends Node

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func goto_scene(path):
    var s = ResourceLoader.load(path)
    var new_scene = s.instance()
    get_tree().get_root().add_child(new_scene)
    get_tree().set_current_scene(new_scene)
    get_tree().current_scene.queue_free()
    get_tree().current_scene = new_scene