extends Node2D

var coin_sprite_area
var mouse_inside = false
 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin_sprite_area = get_node("CoinSprite/CoinSpriteArea")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mouse_inside == true && Input.is_action_just_pressed("mouse_click"):
		Singleton.coin_flip_sound.play()
		Singleton._flip_coin()

func _on_coin_sprite_area_mouse_entered() -> void:
	mouse_inside = true

func _on_coin_sprite_area_mouse_exited() -> void:
	mouse_inside = false
