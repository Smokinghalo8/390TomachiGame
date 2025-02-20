extends Node2D

var coinRate
var danger
var elementArray = []
var coins
var coinLimit
var canPress = false
signal cashedOut(coins)
@onready var wendigo = preload("res://Cryptids/wendigo.tscn")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coinRate = 0
	danger = 0
	coinLimit = 500
	coins = 0
	getElements()
	


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
		print("Mothman coins: " + str(coins))
		updateCoins()
	else:
		pass


func updateCoins():
	$MothmanCoins.text = str(coins)


func _on_coins_button_body_entered(body: Node2D) -> void:
	print("Entered")
	canPress = true


func _on_coins_button_body_exited(body: Node2D) -> void:
	print("Exited")
	canPress = false


func _on_coins_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		cashedOut.emit(coins)
		coins = 0
		updateCoins()
		


func _on_click_to_open_menu_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
