extends Node2D

var totalCoins

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	totalCoins = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_wendigo_biome_cashed_out(coins: Variant) -> void:
	totalCoins += coins
	$Coinage/Coins.text = str(totalCoins)


func _on_unlock_nessie_pressed() -> void:
	if totalCoins >= 200:
		totalCoins -= 200
		$Coinage/Coins.text = str(totalCoins)
		$Fog.queue_free()
		$NessieBiome/Nessie.process_mode = Node.PROCESS_MODE_INHERIT
		$UnlockNessie.visible = false


func _on_unlock_mothman_pressed() -> void:
	if totalCoins >= 400:
		totalCoins -= 400
		$Coinage/Coins.text = str(totalCoins)
		$Fog2.queue_free()
		$MothmanBiome/Mothman.process_mode = Node.PROCESS_MODE_INHERIT
		$UnlockMothman.visible = false


func _on_nessie_biome_cashed_out(coins: Variant) -> void:
	totalCoins += coins
	$Coinage/Coins.text = str(totalCoins)


func _on_mothman_biome_cashed_out(coins: Variant) -> void:
	totalCoins += coins
	$Coinage/Coins.text = str(totalCoins)
