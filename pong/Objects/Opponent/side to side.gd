extends KinematicBody2D
var speed = 200
var ball

func _ready():
	ball = get_parent().find_node("ball")
func _physics_process(delta):
	move_and_slide(Vector2(get_opponent_dirrection() , 0) * speed)

func get_opponent_dirrection():
	if abs(ball.position.x - position.x) > 25:
		if ball.position.x > position.x: return 1
		else: return -1
	else: return 0
