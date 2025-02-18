extends Node2D

var coinRate
var danger
var elementArray = []
var coins
var coinLimit
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
	getCoinRate()
	if coins < coinLimit:
		coins += coinRate
		print("Coins: " + str(coins))
	else:
		pass


func instCryptid(name, branch):
	name = wendigo.instantiate()
	name.position = Vector2(192,160)
	get_node("/root/" + branch).add_child(name)
	getElements()


func _on_make_crytpid_pressed() -> void:
	instCryptid("Wendigo1", "Map/WendigoBiome")
	$MakeCryptid.visible = false
