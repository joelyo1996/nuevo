extends Node2D
var a = Vector2 (500,50)
var b = Vector2 (500,100)
var pocision1 = 0
var pocision2 = 0
var pocision3 = 0
var opciones = 0
var texto5 = "volar en una escoba"
var texto4 = "participar de los medios de comunicación"
var texto3 = "    informar"
var texto = " recibir información"
var texto_pizzaron = "también es nuestro derecho"
var texto_pizzaron1 = "… y como público, los niños, niñas y jóvenes tenemos derecho a…"
var texto_opcion = "… que los programas de tele y radio, diarios y revistas no nos discriminen…"
var texto_opcion3 = "… que nuestra voz sea escuchada y tenida en cuenta…"
var texto_opcion4 = "… que se respete el horario apto para todo el público…"
var texto_opcion5 = "… que los años no pasen…"
var dialogo = "Muy bien. Haz click en avanzar y pasemos a la tersera frase"
var dialogo1 ="Muy bien. Ahora preparémonos para escuchar cómo quedó nuestro spot."
var dialogo2 = ""
var avanzar = 0
func _ready():
<<<<<<< HEAD
	if global.silencio == true:
		$AudioStreamPlayer.stop()
	else:
		$AudioStreamPlayer.play()
	if global.entradasEscuela == 0 :
		$Cuadro_dialogo/TextureButton.disabled = true
		yield(get_tree().create_timer(2),"timeout")
		$AnimationPlayer.play("entrada1")
		yield(get_tree().create_timer(2),"timeout")
		$Cuadro_dialogo/TextureButton.disabled = false
	if global.entradasEscuela == 1 :
		$AnimationPlayer.play("entrada2")
	
=======
	if global.entradasEscuela == 0 :
		yield(get_tree().create_timer(2),"timeout")
		$AnimationPlayer.play("entrada1")
	if global.entradasEscuela == 1 :
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
		
	pass


	
func _on_TextureButton_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if global.entradasEscuela == 0 :
		global.entradaspizzaron = 3
		get_tree().change_scene("res://escenas/pizarron1.tscn")
	if global.entradasEscuela == 1 :
		$AnimationPlayer.play("puzzle")
	if global.entradasEscuela == 2 :
		global.entradaspizzaron = 4
		get_tree().change_scene("res://escenas/pizarron1.tscn")
	pass # Replace with function body.


func _on_boton_opcion_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if global.entradasEscuela == 1 :
		if opciones != 2:
			opciones = opciones + 1
			$AnimationPlayer.play("label_opcion")
			if pocision1 == 0:
				$texto_opcion.rect_position = a
			
				pocision2 = 1
				pocision3 = 1
			if pocision1 == 1 :
				$texto_opcion.rect_position = b
				yield(get_tree().create_timer(2),"timeout")
				if opciones == 2:
					avanzar = avanzar +1
					$AnimationPlayer.play("frase2")
	pass # Replace with function body.


func _on_opcion3_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if global.entradasEscuela == 1 :
		if opciones != 2:
			opciones = opciones + 1
			$AnimationPlayer.play("label_opcion3")
			if pocision2 == 0 :
				$texto_opcion3.rect_position = a
			
				pocision1 = 1
				pocision3 = 1
			if pocision2 == 1 :
				$texto_opcion3.rect_position = b
				yield(get_tree().create_timer(2),"timeout")
				if opciones == 2:
					avanzar = avanzar +1
					$AnimationPlayer.play("frase2")
	pass # Replace with function body.


func _on_opcion4_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if global.entradasEscuela == 1 :
		if opciones != 2:
			opciones = opciones + 1
			$AnimationPlayer.play("label_opcion4")
			if pocision3 == 0 :
				$texto_opcion4.rect_position = a
				pocision2 = 1
				pocision1 = 1
			if pocision3 == 1 :
				$texto_opcion4.rect_position = b
				yield(get_tree().create_timer(2),"timeout")
				if opciones == 2:
					avanzar = avanzar +1
					$AnimationPlayer.play("frase2")
					
	pass # Replace with function body.


func _on_opcion5_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if global.entradasEscuela == 1 :
		if opciones != 2:
			$AnimationPlayer.play("label_opcion5")
	pass # Replace with function body.


func _on_avanzar_pressed():
	$AudioStreamPlayer2.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioStreamPlayer2.stop()
	if avanzar == 1 :
		$AnimationPlayer.play("inicio_frase2")
		$Label_opcion5.text = texto5
		$Label_opcion4.text = texto4
		$Label_opcion3.text = texto3
		$Label_opcion.text = texto
		$Label_Pizzarron.text = texto_pizzaron
		$texto_opcion.text = texto
		$texto_opcion3.text = texto3
		$texto_opcion4.text = texto4
		opciones = 0
		pocision1 = 0
		pocision2 = 0
		pocision3 = 0
		yield(get_tree().create_timer(2),"timeout")
		
	if avanzar == 2 :
		$AnimationPlayer.play("inicio_frase2")
		$Label_opcion5.text = texto_opcion5
		$Label_opcion4.text = texto_opcion4
		$Label_opcion3.text = texto_opcion3
		$Label_opcion.text =texto_opcion
		$Label_Pizzarron.text = texto_pizzaron1
		$texto_opcion.text = texto_opcion
		$texto_opcion3.text = texto_opcion3
		$texto_opcion4.text = texto_opcion4
		opciones = 0
		pocision1 = 0
		pocision2 = 0
		pocision3 = 0
		
	if avanzar == 3 :
		$dialogo5.text = dialogo1
		$AnimationPlayer.play("salir_puzzle")
		yield(get_tree().create_timer(5),"timeout")
		$dialogo5.text = dialogo2
		$AnimationPlayer.play("spot")
		global.entradasEscuela = 2
	pass # Replace with function body.
