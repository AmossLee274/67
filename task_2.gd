extends Node2D


var pipes = []

const GRID_SIZE = 3


func find_neighbors(pipe) -> Array:
	var neighbors = []

	for other_pipe in pipes:
		if other_pipe == pipe:
			continue

		var difference = other_pipe.grid_position - pipe.grid_position

		if abs(difference.x) + abs(difference.y) == 1:
			neighbors.append(other_pipe)

	return neighbors


func get_clicked_pipe():
	var mouse_position = get_global_mouse_position()

	var closest_pipe = null
	var closest_distance = INF

	for pipe in pipes:
		var distance = mouse_position.distance_to(pipe.global_position)

		if distance < closest_distance:
			closest_distance = distance
			closest_pipe = pipe

	if closest_distance < 100:
		return closest_pipe

	return null


# ADDED
func check_connection(pipe, other_pipe) -> bool:
	var difference = other_pipe.grid_position - pipe.grid_position

	if difference == Vector2i(-1, 0):
		return pipe.left and other_pipe.right

	elif difference == Vector2i(1, 0):
		return pipe.right and other_pipe.left

	elif difference == Vector2i(0, -1):
		return pipe.up and other_pipe.down

	elif difference == Vector2i(0, 1):
		return pipe.down and other_pipe.up

	return false


func check_puzzle() -> bool:
	for pipe in pipes:

		var neighbors = find_neighbors(pipe)

		for other_pipe in neighbors:

			if not check_connection(pipe, other_pipe):
				return false

	return true


func _ready() -> void:





	
	$Straight.grid_position = Vector2i(0, -1)
	$Straight2.grid_position = Vector2i(1, 0)
	$Curved.grid_position = Vector2i(0, 1)
	$Straight4.grid_position = Vector2i(-1, 0)
	$Straight3.grid_position = Vector2i(0, 0)
	$Curved3.grid_position = Vector2i(-1, -1)
	$Straight5.grid_position = Vector2i(-1, 1)
	$Curved2.grid_position = Vector2i(1, 1)
	$Curved4.grid_position = Vector2i(1, -1)

	pipes = [$Straight, $Straight2, $Curved, $Curved2, $Straight3, $Curved3, $Straight5, $Curved2, $Curved4]

var Hasprint = false
func Complete():
	print("You have completed the puzzle")
	Hasprint = true


func _process(delta: float) -> void:
	
	if check_puzzle():
		print("PUZZLE SOLVED!")

	if Hasprint == true:
		pass

	if not Hasprint and $Straight5.up == true and $Straight4.up == true and $Curved3.down == true and $Curved3.right == true and $Straight.left == true and $Curved2.left == true and $Curved2.down == true and $Straight2.down == true and $Curved4.up == true and $Curved4.left == true and $Curved.right == true and $Curved.up == true and $Straight3.up == true:
		Complete()


	if $Straight5.up == true and $Straight4.up == true :
		pass
	





func _input(event: InputEvent) -> void:

	if event is InputEventMouseButton:

		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:

			var clicked_pipe = get_clicked_pipe()

			if clicked_pipe:

				print("Clicked: ", clicked_pipe.name)

				var neighbors = find_neighbors(clicked_pipe)

				for pipe in neighbors:

					var difference = pipe.grid_position - clicked_pipe.grid_position

					if difference == Vector2i(-1, 0):
						print("Left neighbour = ", pipe.grid_position)

					elif difference == Vector2i(1, 0):
						print("Right neighbour = ", pipe.grid_position)

					elif difference == Vector2i(0, -1):
						print("Top neighbour = ", pipe.grid_position)

					elif difference == Vector2i(0, 1):
						print("Bottom neighbour = ", pipe.grid_position)

					# ADDED
					if check_connection(clicked_pipe, pipe):
						print("These pipes are connected!")
