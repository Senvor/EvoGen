extends CharacterBody2D

var speed = 200

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		$Sprite2D.flip_h = false
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		$Sprite2D.flip_h = true
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	position.x = clamp(position.x, 0, 1152)
	position.y = clamp(position.y, 0, 648)

	velocity = direction * speed
	move_and_slide()
