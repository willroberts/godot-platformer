extends Area2D

@onready var anim_player = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	%GameState.increment_score()
	anim_player.play("pickup")
