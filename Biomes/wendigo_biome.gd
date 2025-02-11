extends Node2D

var coinRate
var danger
var elementArray = []
var coins
var coinLimit
var origin = Vector2(0,0)
@onready var wendigo = preload("res://Cryptids/wendigo.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coinRate = 0
	danger = 0
	coinLimit = 500
	coins = 0


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
	if coins <= coinLimit:
		coins += coinRate
		print(coins)
	else:
		pass

func instCryptid(pos, thing):
	var stuff = thing.instantiate()
	stuff.position = pos
	get_node("/root/WendigoBiome").add_child(stuff)
