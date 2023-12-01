extends Area2D

class_name DeathZone

signal life_lost

@onready var ball_death = $"../Audios/BallDeath"


func _on_body_entered(body):
	life_lost.emit()
	ball_death.play()
