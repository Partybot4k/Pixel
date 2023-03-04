class_name SinglePixel
extends StaticBody2D

func _ready():
	$CollisionShape2D/Sprite2D.modulate = Color(randf_range(0,1),randf_range(0,1),randf_range(0,1))
