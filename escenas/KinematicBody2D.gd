extends KinematicBody2D
var salto= 300
var spee = 100
var move = Vector2(0,-1)
var direccion 
var saltando 
func _physics_process(delta):
	if Input.is_action_pressed("saltar") && !saltando == true:
		saltando = true
		move.y = -salto
		$Animationpersonaje.play("saltar")
		yield(get_tree().create_timer(1),"timeout")
		move.y = +salto
		yield(get_tree().create_timer(2),"timeout")
		salto = 300
		saltando = false
	if Input.is_action_pressed("derecha"):
		move.x = spee
		$Animationpersonaje.play("caminar")
		$Sprite.flip_h= false
		$Sprite.flip_v= false
	if Input.is_action_pressed("izqui"):
		move.x = -spee
		$Animationpersonaje.play("caminar")
		$Sprite.flip_h= true
		$Sprite.flip_v= false
	#Input.is_action_just_released("abajo") or Input.is_action_just_released("arriba") or Input.is_action_just_released("abajo") or 
	if Input.is_action_just_released("derecha") or Input.is_action_just_released("izqui"):
		$Animationpersonaje.stop()
		move.x = 0
	if is_on_floor():
		move.y = 0
		
	move_and_slide(move)
