extends Area2D



func _on_Killer_body_entered(body):
#	get_tree().reload_current_scene()
	get_tree().change_scene("res://Levels/intro_gui.tscn")
