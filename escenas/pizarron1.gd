extends Node2D
var cont = 0
var opc1 = false
var opc2 = false
var opc3 = false
var opcion
var texto ="Y es muy importante conocer estas leyes y estos derechos, porque nadie defiende un derecho que no conoce.”"
func _ready():
<<<<<<< HEAD
	if global.silencio == true:
		$AudioStreamPlayer.stop()
	else:
		$AudioStreamPlayer.play()
	#global.entradaspizzaron = 3
=======
	
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	if global.entradaspizzaron == 0:
		$AnimationPlayer.play("entrada1")
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("entrada2")
	if global.entradaspizzaron == 3:
		$AnimationPlayer.play("entrada3")
	if global.entradaspizzaron == 4:
		$AnimationPlayer.play("entrada4")
	pass

	
		

func _on_Button_pressed():
	$boton.disabled = true
	$Button.disabled = true
	$Button2.disabled = true
	$Button3.disabled = true
	if global.entradaspizzaron == 0:
		$AnimationPlayer.play("opcion1")
		
		opcion = 1
		opc1 = true
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion4")
		
		opcion = 4
		opc1 = true
	if global.entradaspizzaron == 3:
		$AnimationPlayer.play("opcion7")
<<<<<<< HEAD
	
		opcion = 7
		opc1 = true
	yield(get_tree().create_timer(2),"timeout")
	$boton.disabled = false
=======
		opcion = 7
		opc1 = true
		
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	pass # Replace with function body.


func _on_boton_pressed():
	$boton.disabled = true

	if (opcion ==1) :
		$AnimationPlayer.play("opcion1_salir")
		$boton.disabled = true
	if (opcion ==2) :
		$AnimationPlayer.play("opcion2_salir")
		$boton.disabled = true
	if (opcion ==3) :
		$AnimationPlayer.play("opcion3_salir")
		yield(get_tree().create_timer(2),"timeout")
		$Button.disabled = false
		$Button2.disabled = false
		
		
		$boton.disabled = true
	if (opcion ==4) :
		$AnimationPlayer.play("opcion4Salir")
		$boton.disabled = true
	if (opcion ==5) :
		$AnimationPlayer.play("opcion5_salir")
		$boton.disabled = true
	if (opcion ==6) :
		$AnimationPlayer.play("opcion6_salir")
<<<<<<< HEAD
		yield(get_tree().create_timer(2),"timeout")
		$Button.disabled = false
		$Button2.disabled = false
		
		$boton.disabled = true
	if (opcion ==7) :
		$AnimationPlayer.play("opcion7_salir")
		$boton.disabled = true
	if (opcion ==8) :
		$AnimationPlayer.play("opcion8_salir")
		$boton.disabled = true
	if (opcion ==9) :
		$AnimationPlayer.play("opcion9_salir")
		yield(get_tree().create_timer(2),"timeout")
		$Button.disabled = false
		$Button2.disabled = false
		
		$boton.disabled = true
=======
	if (opcion ==7) :
		$AnimationPlayer.play("opcion7_salir")
	if (opcion ==8) :
		$AnimationPlayer.play("opcion8_salir")
	if (opcion ==9) :
		$AnimationPlayer.play("opcion9_salir")
	
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	if global.entradaspizzaron == 0:
		if (opc1 == true && opc2 == true && opc3 == true ):
			yield(get_tree().create_timer(3),"timeout")
			global.entrada_comedor = global.entrada_comedor + 1
			get_tree().change_scene("res://primer_escena_el_conedor.tscn")
	if global.entradaspizzaron == 1:
		if (opc1 == true && opc2 == true && opc3 == true ):
			yield(get_tree().create_timer(3),"timeout")
			global.entradaspizzaron = 2
			global.entradasFerreteria = 2
			get_tree().change_scene("res://escenas/Ferreteria.tscn")
	if global.entradaspizzaron == 3:
		if (opc1 == true && opc2 == true && opc3 == true ):
<<<<<<< HEAD
			yield(get_tree().create_timer(3),"timeout")
			global.entradasEscuela = 1
			get_tree().change_scene("res://escenas/escuela.tscn")
	if global.entradaspizzaron == 4:
		$AnimationPlayer.play("fin")
		yield(get_tree().create_timer(3),"timeout")
		get_tree().change_scene("res://escenas/menu.tscn")
	yield(get_tree().create_timer(2),"timeout")
	$Button.disabled = false
	$Button2.disabled = false
	$Button3.disabled = false
=======
			yield(get_tree().create_timer(4),"timeout")
			global.entradasEscuela = 1
			get_tree().change_scene("res://escenas/escuela.tscn")
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	pass # Replace with function body.


func _on_Button2_pressed():
	$boton.disabled = true
	$Button.disabled = true
	$Button2.disabled = true
	$Button3.disabled = true
	if global.entradaspizzaron == 0:
		opc2 = true
		$AnimationPlayer.play("opcion2")
		
		opcion = 2
		cont = cont +1
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion5")
		
		opcion = 5
		opc2 = true
	if global.entradaspizzaron == 3:
		$AnimationPlayer.play("opcion8")
<<<<<<< HEAD
		
		opcion = 8
		opc2 = true
	yield(get_tree().create_timer(2),"timeout")
	$boton.disabled = false
=======
		opcion = 8
		opc2 = true
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	pass # Replace with function body.


func _on_Button3_pressed():
	$boton.disabled = true
	$Button.disabled = true
	$Button2.disabled = true
	if global.entradaspizzaron == 0:
		opc3 = true
		$AnimationPlayer.play("opcion3")
		
		$Button3.disabled = true
		opcion = 3
		cont = cont +1
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion6")
		
		opcion = 6
		opc3 = true
	if global.entradaspizzaron == 3:
		$AnimationPlayer.play("opcion9")
<<<<<<< HEAD
	
		opcion = 9
		opc3 = true
	yield(get_tree().create_timer(2),"timeout")
	$boton.disabled = false
	
=======
		opcion = 9
		opc3 = true
>>>>>>> bd164b9edcb76a049ae8f2e41e36834a58f97cb1
	pass # Replace with function body.
