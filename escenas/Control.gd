extends Node2D

#--------------------------------------------------------------------------
#---------------SONIDO AL APRETAR UNA TECLA EN PARTICULAR------------------
func _process(_delta):
	var notas = {"nota1": "not1",
	"nota2": "not2",
	"nota3": "not3",
	"nota4": "not4",
	"nota5": "not5",
	"nota6": "not6",
	"nota7": "not7",
	"nota8": "not8",
	"nota9": "not9"}

	for nota in notas:
		if Input.is_action_just_pressed(nota):
			var node_path = notas[nota]
			var note_node = get_node(node_path)
			if note_node:
				note_node.play()
			else:
				print("Node not found:", node_path)
				print(node_path)

	var lengua_nodes = {"nota1": $lengua1,
						"nota2": $lengua2,
						"nota3": $lengua3,
						"nota4": $lengua4,
						"nota5": $lengua5,
						"nota6": $lengua6,
						"nota7": $lengua7,
						"nota8": $lengua8,
						"nota9": $lengua9}
	
	for nota in lengua_nodes:
		var node = lengua_nodes[nota]
		if Input.is_action_pressed(nota):
			node.set_as_top_level(true)
			node.play(nota[-1])
		elif Input.is_action_just_released(nota):
			node.set_as_top_level(false)
			node.play("original")


func _on_backmenu_pressed():
	$not3.play()
	get_tree().change_scene_to_file("res://escenas/menu.tscn")
