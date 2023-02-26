class_name Player
extends CharacterBody2D

const SPEED = 20000

func _ready():
<<<<<<< HEAD
	get_parent().get_child_count()
=======
	pass
>>>>>>> 05adb4471a4e53a717f5d657e0e49e5467123be2

func _physics_process(delta):
	var x_dir: float = Input.get_axis("left", "right")
	var y_dir: float = Input.get_axis("up", "down")
	
	velocity = Vector2(x_dir, y_dir) * SPEED * delta
	
<<<<<<< HEAD
	
=======
>>>>>>> 05adb4471a4e53a717f5d657e0e49e5467123be2
	move_and_slide()
