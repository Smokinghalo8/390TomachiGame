extends Node2D

@onready var wBiome = preload("res://Biomes/wendigo_biome.tscn")
var origin = Vector2(0,0)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	instBiome(origin, wBiome)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func instBiome(pos, thing):
	var stuff = thing.instantiate()
	stuff.position = pos
	get_node("/root/Map").add_child(stuff)
