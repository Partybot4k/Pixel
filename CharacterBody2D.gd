class_name Player
extends CharacterBody2D

const SPEED = 20000

func _physics_process(delta):
	var x_dir: float = Input.get_axis("left", "right")
	var y_dir: float = Input.get_axis("up", "down")
	
	velocity = Vector2(x_dir, y_dir) * SPEED * delta
	
	move_and_slide()
