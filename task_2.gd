extends Node2D


# Called when the node enters the scene tree for the first time.
var pipes = []

func find_neighbors(pipe) -> Array:
	var neighbors = []

	for other_pipe in pipes:
		if other_pipe == pipe:
			continue

		var difference = other_pipe.grid_position - pipe.grid_position

		if abs(difference.x) + abs(difference.y) == 1:
			neighbors.append(other_pipe)

	return neighbors




func _ready() -> void:
	$Straight.grid_position = Vector2i(0, 0)
	$Straight2.grid_position = Vector2i(0, 1)
	$Curved.grid_position = Vector2i(1, 0)
	$Curved2.grid_position = Vector2i(1, 1)

	pipes = [$Straight, $Straight2, $Curved, $Curved2]


	var neighbors = find_neighbors($Straight)

	for pipe in neighbors:
		print($Straight.name, " is beside ", pipe.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
