extends Node2D

func _physics_process(delta):
	print(get_parent().rotation)
	update()
		
		
func _draw(): 
	var r = get_parent().rotation
	#print(r)
	var x = cos(r)*10
	var y = sin(r)*10
	var translate = Vector2(x, y)
	
	var limits = [Vector2(-32, -8), Vector2(32, -8), Vector2(32, 8), Vector2(-32,8)]
	var top = limits
	
	for i in range(0, top.size()):
		top[i] = top[i] + translate
	
	var color = [Color("#5351D0")]
	draw_polygon(limits,color) 


#func get_corners(object):
	

