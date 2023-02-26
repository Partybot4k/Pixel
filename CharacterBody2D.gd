class_name Player
extends CharacterBody2D

const SPEED = 20000

signal eaten(_amount)

func _ready():
	$Sprite.connect('eaten', doEaten)
	get_parent().get_child_count()

func _physics_process(delta):
	var x_dir: float = Input.get_axis("left", "right")
	var y_dir: float = Input.get_axis("up", "down")
	
	velocity = Vector2(x_dir, y_dir) * SPEED * delta
	
	$Sprite2D.apply_scale(1.5)
	
	move_and_slide()

func doEaten():
	pass
