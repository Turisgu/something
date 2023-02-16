extends KinematicBody2D

var speed = 700

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	
	
	
	
	move_and_slide(velocity * speed)
