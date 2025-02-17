extends Node2D

const SPEED = 30
var direction = 1
@onready var raycast_left = $RayCastLeft
@onready var raycast_right = $RayCastRight
@onready var sprite = $AnimatedSprite2D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if raycast_left.is_colliding():
		direction = 1
		sprite.flip_h = false
	elif raycast_right.is_colliding():
		direction = -1
		sprite.flip_h = true
	position.x += direction * SPEED * delta
