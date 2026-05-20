class_name  CollectableComponent
extends Area2D

@export var collctable_name:String


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		InventoryManager.add_collectable(collctable_name)
		print("Collected： ",collctable_name)
		get_parent().queue_free()
