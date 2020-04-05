extends Position2D

export (PackedScene) var npc
func _ready():
	pass


func _on_Timer_timeout():
	global.newEnemigo = npc.instance()
	get_tree().get_nodes_in_group("main")[0].add_child(global.newEnemigo)
	
	global.newEnemigo.global_position = global_position 
	
