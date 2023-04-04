extends CharacterBody2D

@export var move_speed : float = 100
@export var sprint_mult : float = 2

func _physics_process(delta):
	# get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	var sprint = Input.get_action_strength("sprint")
	
	#update vel
	if sprint == 1: #sprinting
		velocity = input_direction * move_speed * sprint_mult
	else:  #not sprinting
		velocity = input_direction * move_speed
	
	
	#move
	move_and_slide()
