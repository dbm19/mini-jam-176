extends Node

var coin_flip_sound

func _ready() -> void:
	coin_flip_sound = 	get_node("CoinFlipSound")

func _process(delta: float) -> void:
	pass
