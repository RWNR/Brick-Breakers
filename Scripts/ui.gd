extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var level_lost_container = $LevelLostContainer
@onready var level_won_container = $LevelWonContainer

@onready var game_won_music = $"../Audios/GameWonMusic"
@onready var game_over_music = $"../Audios/GameOverMusic"
@onready var background_music = $"../Audios/BackgroundMusic"


func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes
	
	
func game_over():
	level_lost_container.show()
	game_over_music.play()
	background_music.stop()
	

func _on_level_lost_button_pressed():
	get_tree().reload_current_scene()
	game_over_music.stop()

func on_level_won():
	level_won_container.show()
	game_won_music.play()
	background_music.stop()

func _on_level_won_button_pressed():
	LevelDefinition.current_level = 2
	get_tree().reload_current_scene()
	game_won_music.stop()
