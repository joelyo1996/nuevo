extends Node2D

# Declare member variables here. Examples:
var desactivar = 0
var s
var a = true

# Called when the node enters the scene tree for the first time.
func _ready():
	
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("precentacion")
	yield(get_tree().create_timer(4),"timeout")
	$AnimationPlayer.play("animacion_sc")
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect.queue_free()
	
	pass 


func _process(delta):
	if (a == false):
		$AudioStreamPlayer.stop()
	

func _on_play_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	$fondo/play.disabled = true
	$AnimationPlayer.play("play")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://escenas/mapa.tscn")
	


func _on_salir_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("salir")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().quit()
	pass # Replace with function body.


func _on_info_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	desactivar = 1
	$fondo/info.disabled = true
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("credito")
	
	
	pass # Replace with function body.


func _on_Button_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	$AnimationPlayer.play("salir_creditos")
	$fondo/info.disabled = false
	pass # Replace with function body.


func _on_sonido_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	
	if $AudioStreamPlayer.playing:
		$AudioStreamPlayer.stop()
		global.silencio = true
	else:
		global.silencio = false
		$AudioStreamPlayer.play()
		
		
	pass # Replace with function body.
