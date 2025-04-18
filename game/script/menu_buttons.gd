extends VBoxContainer
@onready var play_button  = $Play
@onready var online_button  =$Online
@onready var market_button  =$Market
func _ready() -> void:
	play_button.pressed.connect()
	online_button.pressed.connect()
	market_button.pressed.connect()
	
func on_play_button() -> void:
	get_tree().change_scene_to_file("res://scenes/offlineplay.tscn")
	
func on_online_button() -> void:
	get_tree().change_scene_to_file("res://scenes/onlineplay.tscn")
	
func on_market_button() -> void:
	get_tree().change_scene_to_file("res://scenes/market.tscn")
