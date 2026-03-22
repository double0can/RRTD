extends Node

@export var enemyScene: PackedScene
@export var path: Path2D
@onready var spawnTimer: Timer = $Timer

func _ready() -> void:
	spawnTimer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout() -> void:
		spawnEnemy()

func spawnEnemy() -> void:
	if enemyScene and path:
		var newEnemy = enemyScene.instantiate()
		path.add_child(newEnemy)
		newEnemy.progress_ratio = 0.0
