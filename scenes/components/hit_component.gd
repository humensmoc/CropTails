class_name  HitComponent
extends Area2D

@export var tool:DataTypes.Tools=DataTypes.Tools.none

signal on_hit

@export var hit_damage:int=1

func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
