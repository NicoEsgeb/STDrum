extends Node2D

func _process(_delta):
	var notas = {"nota1al": "notal1",
	"nota2al": "notal2",
	"nota3al": "notal3",
	"nota4al": "notal4",
	"nota5al": "notal5",
	"nota6al": "notal6",
	"nota7al": "notal7",
	"nota8al": "notal8"}

	for nota in notas:
		if Input.is_action_just_pressed(nota):
			print("hello")
			var node_path = notas[nota]
			var note_node = get_node(node_path)
			if note_node != null:
				note_node.play()
			else:
				print("Node not found:", node_path)

	var lengua_nodes = {"nota1al": $Lengua1al,
						"nota2al": $Lengua2al,
						"nota3al": $Lengua3al,
						"nota4al": $Lengua4al,
						"nota5al": $Lengua5al,
						"nota6al": $Lengua6al,
						"nota7al": $Lengua7al,
						"nota8al": $Lengua8al}

	for nota in lengua_nodes:
		var node = lengua_nodes[nota]
		if Input.is_action_pressed(nota):
			node.set_as_top_level(true)
			node.play(nota[-3])
		elif Input.is_action_just_released(nota):
			node.set_as_top_level(false)
			node.play("original")


#----------------------------------------------------------------------


func _on_backmenu_pressed():
	$notal1.play()
	get_tree().change_scene_to_file("res://escenas/menu.tscn")
