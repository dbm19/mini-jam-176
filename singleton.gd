extends Node

var coin_flip_sound
var coin_flip_result
var result_finished = false
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	coin_flip_sound = get_node("CoinFlipSound")

func _process(delta: float) -> void:
	pass

func _flip_coin() -> void:
	result_finished = false
	var random_number = rng.randi_range(0, 1)
	if random_number == 1:
		coin_flip_result = "heads"
	else:
		coin_flip_result = "tails"
	print(coin_flip_result)

func _on_coin_flip_sound_finished() -> void:
	print("dnak")
	result_finished = true
