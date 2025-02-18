extends Area2D

@onready var menuResource = preload("res://Scenes/IndividualCare/IndividualCare.tscn")
@onready var menuInstance
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		menuInstance = menuResource.instantiate()
		menuInstance.position = Vector2(-360,0)
		get_tree().root.add_child(menuInstance)
