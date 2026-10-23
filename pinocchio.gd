extends Sprite2D

@export var number = 0
@export var speed = 200

#var health= 250
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Pinocchio is ready!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	print(Input.is_key_pressed(KEY_M))
	print(Input.is_key_pressed(KEY_B))

	
	if Input.is_key_pressed(KEY_M):
		position.x += speed * delta
	if Input.is_key_pressed(KEY_B):
		position.x -= speed * delta

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		print("Detected: ", event.as_text())

#	position.x += speed 
#print(position)
	#position.y= number/2
