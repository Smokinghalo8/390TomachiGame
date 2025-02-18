extends CharacterBody2D

@onready var mouseHover = false
@onready var moveable = false
@onready var initPos = self.position
@onready var sprite = $Sprite2D

@export var texture: Texture

func _ready() -> void:
	sprite.texture = texture
	

func _physics_process(delta: float) -> void:
	if moveable:
		self.position = get_global_mouse_position()
	else:
		self.position = initPos
	

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and mouseHover:
		moveable = true
	if Input.is_action_just_released("click"):
		moveable = false



func _on_mouse_entered() -> void:
	mouseHover = true
	


func _on_mouse_exited() -> void:
	mouseHover = false


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
