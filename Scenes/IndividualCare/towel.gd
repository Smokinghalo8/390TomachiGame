extends CharacterBody2D



func _physics_process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass


func _on_mouse_entered() -> void:
	print("test")


func _on_mouse_shape_entered(shape_idx: int) -> void:
	print("test'")
