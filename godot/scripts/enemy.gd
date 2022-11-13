extends Area2D


func _on_Area2D_area_entered(area):
	print("Enemy killed.")
	free()


func _on_enemy_body_entered(body: KinematicBody2D) -> void:
	if body.name != "mac_cliche":
		return
	
	print("Player hurt.")
