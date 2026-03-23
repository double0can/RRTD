extends Area2D

@export var speed: float = 400.0
@export var damage: int = 1

func _physics_process(delta: float) -> void:
	# transform.x points where bullet is facing making it fly straight
	global_position += transform.x * speed * delta

func _on_area_entered(area: Node2D) -> void:
