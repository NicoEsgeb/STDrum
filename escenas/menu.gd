extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_melancolico2_pressed():
	get_tree().change_scene_to_file("res://escenas/principal.tscn")


func _on_salir2_pressed():
	get_tree().quit()
	
func _process(_delta):
	if $music.playing == false:
		$music.play()
	if Input.is_action_just_pressed("nota9") == true:
		$not9.play()	
	if Input.is_action_just_pressed("nota5al") == true:
		$notal5.play()	


func _on_alegre2_pressed():
	get_tree().change_scene_to_file("res://escenas/alegre.tscn")
