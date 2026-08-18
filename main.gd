extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Straight.left and $Straight2.right == true:
		print("connected")
	if $Straight.right and $Straight2.left == true:
		print("connected")

	if $Straight.up and $Straight2.down == true:
		print("not connected") 
	if $Straight.down and $Straight2.up == true:
		print("not connected")

	if $Straight.left and $Straight2.up == true:
		print("not connected")
	if $Straight.left and $Straight2.down == true:
		print("not connected")
	if $Straight.right and $Straight2.up == true:
		print("not connected")
	if $Straight.right and $Straight2.down == true:
		print("not connected")

	if $Straight.up and $Straight2.left == true:
		print("not connected")
	if $Straight.up and $Straight2.right == true:
		print("not connected")
	if $Straight.down and $Straight2.left == true:
		print("not connected")
	if $Straight.down and $Straight2.right == true:
		print("not connected")
