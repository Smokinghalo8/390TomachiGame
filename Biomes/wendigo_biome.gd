extends Node2D

var coinRate
var danger
var elementArray = []
var coins
var coinLimit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coinRate = 0
	danger = 0
	coinLimit = 500


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func getElements():
	elementArray = self.get_children()


func getCoinRate():
	for i in elementArray:
		if i.is_in_group("cryptid"):
			coinRate += i.worth




func _on_timer_timeout() -> void:
	if coins >= coinLimit:
		coins += coinRate
	else:
		pass
