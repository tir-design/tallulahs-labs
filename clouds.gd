extends Panel

@export var number = 0
@export var speed = 200

#var health= 250

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	print(Input.is_key_pressed(KEY_I))
	print(Input.is_key_pressed(KEY_P))

	
	if Input.is_key_pressed(KEY_I):
		position.x += speed * delta
	if Input.is_key_pressed(KEY_P):
		position.x -= speed * delta

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		print("Detected: ", event.as_text())

#	position.x += speed 
#print(position)
	#position.y= number/2
