class_name Player
extends CharacterBody2D

const SPEED = 20000

func _ready():
	get_parent().get_child_count()
	$Pixel.get_node("Sprite2D").modulate = Color(randf_range(0,1),randf_range(0,1),randf_range(0,1))

func _physics_process(delta):
	var x_dir: float = Input.get_axis("left", "right")
	var y_dir: float = Input.get_axis("up", "down")
	
	velocity = Vector2(x_dir, y_dir) * SPEED * delta
	
	move_and_slide()
	
	for i in get_slide_collision_count():
		var singlePixel = get_slide_collision(i).get_collider_shape().get_parent()
		eatSinglePixel(singlePixel)

var pixelNode = preload("res://pixel.tscn")
func eatSinglePixel(singlePixel: StaticBody2D):
	var newPixel = pixelNode.instantiate()
	var pos_offset = singlePixel.position - position
	newPixel.position = pos_offset
	var spSprite: Sprite2D = singlePixel.get_node("CollisionShape2D/Sprite2D")
	var newSprite: Sprite2D = newPixel.get_node("Sprite2D")
	newSprite.modulate = spSprite.modulate
	singlePixel.queue_free()
	add_child(newPixel)
