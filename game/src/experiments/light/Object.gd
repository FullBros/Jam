extends RigidBody2D

signal clicked
var selected = false
var clickZone = Vector2()

#func _on_Area2D_input_event(viewport, event, shape_idx):
#	if Input.is_action_just_pressed("click"):
#		print("check")
#		selected = true
#		
		
func _physics_process(delta):
	
	$Top1.global_transform.origin = global_transform.origin + Vector2(-2,-2)
	$Top2.global_transform.origin = global_transform.origin + Vector2(-4,-4)
	
	if selected:
		global_position = lerp(global_position, get_global_mouse_position() + clickZone, 25 * delta)
		look_at(get_global_mouse_position())

	update()



#func _input_event(viewport, event, shape_idx):
func _on_Object_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("clicked", self)
			selected = true
			#print(rotation_degrees)
			#clickZone = global_position - get_global_mouse_position() 


func _input (event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false


#func draw_top():
#	draw_rect()
	
	





