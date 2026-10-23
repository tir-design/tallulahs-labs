extends Sprite2D

@export var number = 0
@export var speed = 200

#var health= 250
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(position.y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	print(Input.is_key_pressed(KEY_V))
	print(Input.is_key_pressed(KEY_T))
	

	if Input.is_key_pressed(KEY_V):
		position.y += speed * delta
	if Input.is_key_pressed(KEY_T):
		position.y -= speed * delta
	
#	position.x += speed 
#print(position)
	#position.y= number/2
