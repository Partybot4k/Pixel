extends CharacterBody2D
@tool

func _ready():
	$Sprite2D.modulate = Color(randf_range(0,1), randf_range(0,1), randf_range(0,1))
