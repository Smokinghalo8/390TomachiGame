extends Node2D


@onready var HydrationBar = $Ui/Bars/HydrationBar
@onready var HappinessBar = $Ui/Bars/HappinessBar
@onready var HygeieneBar = $Ui/Bars/HygeineBar


var waterLevel;
var happyLevel;
var dookieLevel;


func IncreaseWater():
	pass
func IncreaseHappy():
	pass
func IncreaseDookie():
	pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#decrease bars
	HydrationBar.value -= .05
	HappinessBar.value -= .1
	HygeieneBar.value -= .05




func _on_exit_button_pressed() -> void:
	self.queue_free()


func _on_towel_mouse_entered() -> void:
	print("test'")
