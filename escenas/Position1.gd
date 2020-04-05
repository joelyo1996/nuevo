extends Position2D
export (PackedScene) var npc

func _ready():
	pass


func _on_Timer_timeout():
	global.tornillo = npc.instance()
	get_tree().get_nodes_in_group("main")[0].add_child(global.tornillo)
	
	global.tornillo.global_position = global_position 
	pass # Replace with function body.
