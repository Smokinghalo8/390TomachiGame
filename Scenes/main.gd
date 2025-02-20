extends Node2D

@onready var wBiome = preload("res://Biomes/wendigo_biome.tscn")
var origin = Vector2(-192,-160)
var totalCoins



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func instBiome(pos, thing, name, branch):
	name = thing.instantiate()
	name.position = pos
	get_node("/root/" + branch).add_child(name)


func _on_wendigo_pressed() -> void:
	get_tree().change_scene_to_file("res://main_map.tscn")
