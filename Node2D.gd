class_name Enemy
extends Creature

enum BEHAVIOR {
	WANDER,
	ATTACK,
	FLEE
}

var Behavior: BEHAVIOR = BEHAVIOR.WANDER
# IDLE vars
# ATTACK vars
var currentTarget: Creature
#FLEE vars
var currentlyTargeting: Creature

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	match Behavior:
		BEHAVIOR.WANDER:
			pass
		BEHAVIOR.ATTACK:
			pass
