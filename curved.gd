extends Area2D

@export var up = false
@export var down = false
@export var left = false
@export var right = false
@export var grid_position: Vector2i = Vector2i(0, 0)
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:


	if Input.is_action_just_pressed("Click"):
		if event.is_action_pressed:
			rotation_degrees += (90)
		if rotation_degrees > (270):
			rotation_degrees = (0)
		
		if rotation_degrees == (90):
			print("point right")

			left = false
			up = false
			right = true
			down = true
		if rotation_degrees == (180):
			print("point down")

			left = true
			up = false
			right = false
			down = true
		if rotation_degrees == (270):
			print("point left")

			left = true
			up = true
			right = false
			down = false
		if rotation_degrees == (0):
			print("point up")

			left = false
			up = true
			right = true
			down = false
		



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
