# scripts/LoginPage.gd
extends Control

@onready var login_button = $VBoxContainer/LoginButton
@onready var user_input = $VBoxContainer/UserInput
@onready var user_password = $VBoxContainer/Password
func _ready() -> void:
	login_button.pressed.connect(on_loginbutton_pressed)

func on_loginbutton_pressed():
	var username = user_input.text
	var password = user_password.text
	print(username,password)
