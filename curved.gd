extends Area2D

var positionofpipe = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			rotation_degrees += (90)
			
			if rotation_degrees > (270):
				rotation_degrees = (0)
			if rotation_degrees == (90):
				print("point right down")
				positionofpipe = 2
			if rotation_degrees == (180):
				print("point down left")
				positionofpipe = 3
			if rotation_degrees == (270):
				print("point left up")
				positionofpipe = 4
				pass
			if rotation_degrees == (0):
				print("point up right")
				

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
