extends CharacterBody2D

@export var speed: int=800
@export var jumpforce: int=1600
@export var gravity: int=4500
var vel:Vector2=Vector2()

func _physics_process(delta):
	vel.x=speed
	if Input.is_action_just_pressed("ui_up"):
		vel.y=jumpforce
		vel.y=gravity*delta
		vel.y=move_and_slide()
