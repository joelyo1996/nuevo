extends Node2D
var crono = 0
var tiempo = "0"
var side = false
func _ready():
	#global.entrada_comedor = 1
	#global.contadordialogo = 4
	if (global.entrada_comedor == 0):
		$libro.disabled = true
		$AnimationPlayer.play("anim1")
		
	if (global.entrada_comedor == 1):
		$TextureButton.disabled = true
		$AnimationPlayer.play("anim5")
		
	pass
	
func dialogo():
	if global.contadordialogo == 1:
		$AnimationPlayer.play("anim2")
		$TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
		pass
		
	if global.contadordialogo == 2:
		$AnimationPlayer.play("amin4")
		$TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
		
		
		pass
	if global.contadordialogo == 3:
		
		$AnimationPlayer.play("anim10")
		$TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
	if global.contadordialogo == 4:
		$TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
		yield(get_tree().create_timer(2),"timeout")
		global.entradaspizzaron = 0
		get_tree().change_scene("res://escenas/pizarron1.tscn")
	if global.contadordialogo == 5:
		$TextureButton.disabled = true
		$AnimationPlayer.play("anim7")
		
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
		$Timer.start()
		pass
	if global.contadordialogo == 6:
		
		$AnimationPlayer.play("anim8")
		$TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$TextureButton.disabled = false
		global.entrada_mapa = 1
		yield(get_tree().create_timer(4),"timeout")
		get_tree().change_scene("res://escenas/mapa.tscn")
	
		
		pass
func _on_Button_pressed():
	
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	
	
	
	pass
	
func _on_TextureButton_pressed():
	$TextureButton.disabled = true
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	global.contadordialogo = global.contadordialogo + 1
	dialogo()
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "anim2":
		$AnimationPlayer.play("amin3")
		pass
		
	if anim_name == "amin4":
		yield(get_tree().create_timer(4),"timeout")
		$AnimationPlayer.play("bebe")
		yield(get_tree().create_timer(2),"timeout")
		$Timer.start()
		$Button.disabled = false
		pass
		
		
	
		
	if anim_name == "anim8":
		
		$Button.disabled = false
		pass
	


func _on_sorvete1_mouse_entered():
	
	pass # Replace with function body.


func _on_sorvete1_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("click"):
		side = true
		print("hola")
	if Input.is_action_just_released("click"):
		side = false
	pass # Replace with function body.


func _on_libro_pressed():
	$TextureButton.disabled = false
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	$AnimationPlayer.play("anim6")
	pass # Replace with function body.


func _on_Timer_timeout():
	crono = crono + 1
	
	pass # Replace with function body.
	
func _physics_process(delta):
	$crono.text = String(crono)
	if (global.sorbete == 8 ) :
		$Timer.stop()
		$AnimationPlayer.play("anim9")
		yield(get_tree().create_timer(2),"timeout")
		global.sorbete = 0
