extends Area2D

var positionofpipe = 1
var valve = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if positionofpipe == (4):
		valve = "C, O, C, O"
	if positionofpipe == (1):
		valve = "O, C, O, C"
	if positionofpipe == (2):
		valve = "C, O, C, O"
	if positionofpipe == (3):
		valve = "O, C, O, C"
		
	
	
	
	if Input.is_action_just_pressed("Click"):
		if event.pressed:
			rotation_degrees += (90)
		if rotation_degrees > (270):
			rotation_degrees = (0)
		
		if rotation_degrees == (90):
			print("point right")
			positionofpipe = 2
		if rotation_degrees == (180):
			print("point down")
			positionofpipe = 3
		if rotation_degrees == (270):
			print("point left")
			positionofpipe = 4
		if rotation_degrees == (0):
			print("point up")
			positionofpipe = 1
		print(positionofpipe)
		print(rotation_degrees)
		print(valve)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
