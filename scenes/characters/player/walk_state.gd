extends NodeState

@export var player:Player
@export var animated_sprite_2d:AnimatedSprite2D
@export var speed:float = 50

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	var dir = GameInputEvents.movement_input()
	
	if dir==Vector2.DOWN:
		animated_sprite_2d.play("walk_front")
	elif dir==Vector2.UP:
		animated_sprite_2d.play("walk_back")
	elif dir==Vector2.LEFT:
		animated_sprite_2d.play("walk_left")
	elif dir==Vector2.RIGHT:
		animated_sprite_2d.play("walk_right")
	
	if dir!=Vector2.ZERO:
		player.player_dir=dir
	
	player.velocity=dir*speed
	player.move_and_slide()


func _on_next_transitions() -> void:
	if !GameInputEvents.is_movement_input():
		transition.emit("Idle")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	animated_sprite_2d.stop()
