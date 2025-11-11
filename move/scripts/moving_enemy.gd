extends Node2D

@onready var enemy: Area2D = $enemy
@onready var ray_cast_left: RayCast2D = $enemy/RayCastLeft
@onready var ray_cast_right: RayCast2D = $enemy/RayCastRight

var speed=30
var direction=1

#Moving enemies
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1
	if ray_cast_right.is_colliding():
		direction = -1	 
	enemy.position.x +=direction * speed * delta  
