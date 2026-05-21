extends Area2D

signal mouse_enter
signal mouse_exit




func _on_mouse_entered() -> void:
	print("mouse enter")
	mouse_enter.emit()


func _on_mouse_exited() -> void:
	print("mouse exit")
	mouse_enter.emit()
