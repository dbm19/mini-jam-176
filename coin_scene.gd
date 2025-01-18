extends Node2D

var coin_sprite
var coin_sprite_area
var mouse_inside = false
 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin_sprite = get_node("CoinSprite")
	coin_sprite_area = get_node("CoinSprite/CoinSpriteArea")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mouse_inside == true && Input.is_action_just_pressed("mouse_click"):
		Singleton.coin_flip_sound.play()
		Singleton._flip_coin()
	
	if Singleton.result_finished == true:
		if Singleton.coin_flip_result == "heads":
			coin_sprite.texture = load("res://art/fox-head.png")
		else:
			coin_sprite.texture = load("res://art/tails.png")

func _on_coin_sprite_area_mouse_entered() -> void:
	mouse_inside = true

func _on_coin_sprite_area_mouse_exited() -> void:
	mouse_inside = false
