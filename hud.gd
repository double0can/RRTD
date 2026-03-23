extends CanvasLayer

@onready var livesUI: Label = $MarginContainer/VBoxContainer/LivesUI

func _ready() -> void:
	GameManager.livesChanged.connect(_on_lives_changed)
	_on_lives_changed(GameManager.lives)
func _on_lives_changed(currentLives: int) -> void:
	livesUI.text = "Lives: " + str(currentLives)
