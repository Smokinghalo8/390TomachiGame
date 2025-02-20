extends Sprite2D

var originalWorth
var worth
var health
var move_distance := 100
var current_direction = Vector2(0, move_distance)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalWorth = 2
	health = 1000
	worth = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	worth = originalWorth * ((health/10)/100)
	position.x = clamp(position.x, 25, 775)
	position.y = clamp(position.y, 75, 775)
	if is_out_of_bounds(position):
		change_direction() 
	set_transform(Transform2D(global_transform.get_rotation(), position))


func _on_health_timer_timeout() -> void:
	health -= 1
	print("Mothman Health: " + str(health))


var directions := [
	Vector2(0, move_distance),
	Vector2(0, -move_distance),
	Vector2(move_distance, 0),
	Vector2(-move_distance, 0),
	Vector2(move_distance, move_distance),
	Vector2(-move_distance, move_distance),
	Vector2(move_distance, -move_distance),
	Vector2(-move_distance, -move_distance)
]

func is_out_of_bounds(pos: Vector2) -> bool:
	return pos.x <= 20 or pos.x >= 300 or pos.y <= 20 or pos.y >= 364
	
	
func change_direction() -> void:
	randomize()
	var new_direction = directions[randi() % directions.size()]
	while new_direction == current_direction:
		new_direction = directions[randi() % directions.size()]
	current_direction = new_direction

func _on_move_timer_timeout() -> void:
	position += current_direction


func _on_direction_timer_timeout() -> void:
	randomize()
	current_direction = directions[randi() % directions.size()]
	
