extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _create_grass_effect():
	var GrassEffect = load("Effects/GrassEffect.tscn")
	var grassEffect = GrassEffect.instance()
	var world = get_tree().current_scene
	world.add_child(grassEffect)
	grassEffect.global_position = global_position
	
func _on_Hurtbox_area_entered(area):
	_create_grass_effect()
	queue_free()
