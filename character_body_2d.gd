extends CharacterBody2D


const SPEED = 300.0


func _process(delta: float) -> void:
	if Input.is_action_just_released("left"):
		$AnimatedSprite2D.play("idle_l")
	if Input.is_action_just_released("right"):
		$AnimatedSprite2D.play("idle_r")
	if Input.is_action_just_released("up"):
		$AnimatedSprite2D.play("idle_b")
	if Input.is_action_just_released("down"):
		$AnimatedSprite2D.play("idle_f")
	
	if Input.is_action_pressed("left"):
		position.x -= 1.2
		$AnimatedSprite2D.play("run_l")


	if Input.is_action_pressed("right"):
		position.x += 1.2
		$AnimatedSprite2D.play("run_r")


	if Input.is_action_pressed("up"):
		position.y -= 1.2
		$AnimatedSprite2D.play("run_b")


	if Input.is_action_pressed("down"):
		position.y += 1.2
		$AnimatedSprite2D.play("run_f")
 
	move_and_slide()
