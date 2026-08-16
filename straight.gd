extends Area2D

var positionofpipe = 1
var up = false
var down = false
var left = false
var right = false
var connection = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if positionofpipe == (4):
		left = false
		up = true
		right = false
		down = true
	if positionofpipe == (1):
		left = true
		up = false
		right = true
		down = false
	if positionofpipe == (2):
		left = false
		up = true
		right = false
		down = true
	if positionofpipe == (3):
		left = true
		up = false
		right = true
		down = false
		
	
	
	
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
		
		if left and right == true:
			connection = true
		else:
			connection = false
		if up and down == true:
			connection = true
		else:
			connection = false
		print(positionofpipe)
		print(rotation_degrees)
		if left and right == true:
			connection = true
		elif left == false and right == true:
			connection = false
		print(connection)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
