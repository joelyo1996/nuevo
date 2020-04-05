extends KinematicBody2D

var spee = 100
var move = Vector2()
var direccion 

func _physics_process(delta):
	if Input.is_action_pressed("arriba"):
		move.y = -spee
		$AnimationPlayer.play("move_y")
		$Sprite.flip_v= false
	if Input.is_action_pressed("abajo"):
		move.y = spee
		$AnimationPlayer.play("move_up")
		$Sprite.flip_v= false
	if Input.is_action_pressed("derecha"):
		move.x = spee
		$AnimationPlayer.play("move_x")
		$Sprite.flip_h= false
		$Sprite.flip_v= false
	if Input.is_action_pressed("izqui"):
		move.x = -spee
		$AnimationPlayer.play("move_x")
		$Sprite.flip_h= true
		$Sprite.flip_v= false
	if Input.is_action_just_released("abajo") or Input.is_action_just_released("arriba") or Input.is_action_just_released("abajo") or Input.is_action_just_released("derecha") or Input.is_action_just_released("izqui"):
		$AnimationPlayer.stop()
		move.x = 0
		move.y = 0
		
	move_and_slide(move)