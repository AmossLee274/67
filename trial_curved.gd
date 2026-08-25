extends Node2D

var points = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

# Curved codes
	if $Curved.right and $Curved2.left == true:
		print("Connected")
	if $Curved3.right and $Curved4.left == true:
		print("Connected")
	
	
	if $Curved.down and $Curved3.up == true:
		print("Connected")
	if $Curved2.down and $Curved4.up == true:
		print("Connected")
