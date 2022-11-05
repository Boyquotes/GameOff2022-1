extends Area2D

var is_next_door = true


func _ready() -> void:
	if self.get_name() == "next_door":
		is_next_door = true
	else:
		is_next_door = false
	
	if not is_next_door:
		self.monitoring = false

func _on_door_body_entered(body: KinematicBody2D) -> void:
	if self.get_name() == "next_door":
		is_next_door = true
	else:
		is_next_door = false
	
	if is_next_door:
		var next_scene = globals.scenes[globals.index_of_current_scene + 1]
		get_tree().change_scene("res://scenes/" + next_scene)
	else:
		var previous_scene = globals.scenes[globals.index_of_current_scene - 1]
		get_tree().change_scene("res://scenes/" + previous_scene)
