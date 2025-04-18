# scripts/LoginPage.gd
extends Control
@onready var dbmanager = preload("res://script/db_manager.gd").new()
@onready var login_button = $VBoxContainer/LoginButton
@onready var register_button = $VBoxContainer/RegisterButton
@onready var user_input = $VBoxContainer/UserInput
@onready var user_password = $VBoxContainer/Password
func _ready() -> void:
	login_button.pressed.connect(on_loginbutton_pressed)
	register_button.pressed.connect(on_register_pressed)

func on_loginbutton_pressed():
	var username = user_input.text
	var password = user_password.text
	if dbmanager.login(username,	password):
		get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")

func on_register_pressed():
	var username = user_input.text
	var password = user_password.text
	if dbmanager.register(username,	password):
		get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
