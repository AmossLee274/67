extends Node2D

var points = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

var works = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

# Top pipe codes.
	if $Straight.left and $Straight2.right == true:
		print("Connected")
	if $Straight.right and $Straight2.left == true:
		print("Connected")

# Left two pipe codes.
	if $Straight.down and $Straight3.up == true:
		print("Connected") 
	if $Straight.up and $Straight3.down == true:
		print("Connected") 

# Right two pipe codes.
	if $Straight2.up and $Straight4.down == true:
		print("Connected") 
	if $Straight2.down and $Straight4.up == true:
		print("Connected") 

# Bottom two pipe codes.
	if $Straight3.left and $Straight4.right == true:
		print("Connected")
	if $Straight3.right and $Straight4.left == true:
		print("Connected")


# Curved Pipes
	if $Curved.right and $Curved2.left == true:
		print("Connected")
	if $Curved.up and $Straight.down == true:
		print("Connected")
	if $Curved2.up and $Straight2.down == true:
		print("Connected")



# Trial
	if $Curved.right and $Curved.up and $Straight.down and $Curved2.left and $Curved2.up and $Straight2.down:
		print("All CONNECTED")
