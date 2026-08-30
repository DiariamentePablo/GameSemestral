extends Area2D

@export var next_level: String = ""

func _on_body_entered(_body: Node2D) -> void:
	call_deferred("load_next_scene")

func load_next_scene() -> void:
	if is_inside_tree():
		get_tree().change_scene_to_file("res://scenes/levels/" + next_level + ".tscn")
