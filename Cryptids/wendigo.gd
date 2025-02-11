extends Sprite2D

var originalWorth
var worth
var health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalWorth = 1
	health = 1000


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	worth = originalWorth * (health/1000)


func _on_health_timer_timeout() -> void:
	health -= 1
