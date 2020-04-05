extends RigidBody2D

func _ready():
	pass
func _physics_process(delta):
	if global.con == 0 :
		queue_free()
	if global.cajas == true:
		queue_free()
func _on_areaTornilloArriba_area_entered(area):
	if area.name == "abajo":
		queue_free()
	if area.name == "areaTornilloAbajo":
		queue_free()
	pass # Replace with function body.


func _on_areaTornilloAbajo_area_entered(area):
	if area.name == "caja":
		queue_free()
	if area.name == "arriba":
		queue_free()
	if area.name == "areaTornilloArriba":
		queue_free()
	if area.name == "AreapocicionarTornillo":
		queue_free()
	pass # Replace with function body.
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "stop":
		queue_free()