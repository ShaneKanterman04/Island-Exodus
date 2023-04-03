extends Camera3D

var camrot_h = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event is InputEventMouseMotion:
		camrot_h += -event.relative.x
		
func _physics_process(delta):
	$h.rotation.degrees.y
