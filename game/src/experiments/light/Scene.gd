extends Node2D

#var held_object = null

#func _ready():
#	for node in get_tree().get_nodes_in_group("Pickable"):
#		print("Pickable")
#		node.connect("clicked", self, "_on_pickable_clicked")

func _physics_process(delta):
	randomize()
	$Lights/Firelight.rotation_degrees = (randi() % 6 - 3)

#func _on_pickable_clicked(object):
#	print("YO!")
#	if !held_object:
#		held_object = object
#		held_object.pickup()

#func _unhandled_input(event):
#	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
#		if held_object and !event.pressed:
#			held_object.drop(Input.get_last_mouse_speed())
#			held_object = null		
	
