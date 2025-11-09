extends Node2D

@export var intensity=20
@export var player_node:Node2D
var initial_hp=20
var hp=initial_hp

#creating a new signal
signal health_changed(new_health)

#runs on scene rendered
func _ready() -> void:
	print("everthings are ready to go")

func _on_start_pressed() -> void:
	hp=initial_hp
	#print("Starting the timer")
	$increasePower.start()


func _on_stop_pressed() -> void:
	#print("Stoping the timer")
	$increasePower.stop()

func _on_increase_power_timeout() -> void:
	hp +=20
	emit_signal("health_changed",hp)

#func _on_health_changed(new_health: Variant) -> void:
	#print("new health ",new_health)
