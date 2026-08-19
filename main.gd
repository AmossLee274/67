extends Node2D

var points = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

# Top pipe codes.
	if $Straight.left and $Straight2.right == true:
		print("Top horizontal")
	if $Straight.right and $Straight2.left == true:
		print("Top Horizonal")

# Left two pipe codes.
	if $Straight.down and $Straight3.up == true:
		print("Left Vertical") 
	if $Straight.up and $Straight3.down == true:
		print("Left Vertical") 

# Right two pipe codes.
	if $Straight2.up and $Straight4.down == true:
		print("Right Vertical") 
	if $Straight2.down and $Straight4.up == true:
		print("Right Vertical") 

# Bottom two pipe codes.
	if $Straight3.left and $Straight4.right == true:
		print("Bottom Horizontal")
	if $Straight3.right and $Straight4.left == true:
		print("Bottom Horizontal")


# All disconnected.
	if $Straight.down and $Straight2.left and $Straight3.up and $Straight4.right == true:
		print("All disconnected")
	if $Straight.down and $Straight2.right and $Straight3.up and $Straight4.left == true:
		print("All disconnected")
	if $Straight.up and $Straight2.left and $Straight3.down and $Straight4.right == true:
		print("All disconnected")
	if $Straight.up and $Straight2.right and $Straight3.down and $Straight4.left == true:
		print("All disconnected")
	if $Straight.left and $Straight2.up and $Straight3.right and $Straight4.down == true:
		print("All disconnected")
	if $Straight.right and $Straight2.up and $Straight3.left and $Straight4.down == true:
		print("All disconnected")
	if $Straight.left and $Straight2.down and $Straight3.right and $Straight4.up == true:
		print("All disconnected")
