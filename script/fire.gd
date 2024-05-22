extends AnimatedSprite2D

const SPEED = 100
var direction = 1

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		if $RayCastRight.is_colliding():
			direction = -1
		if $RayCastLeft.is_colliding():
			direction = 1
			
		position.x += direction * SPEED * delta
