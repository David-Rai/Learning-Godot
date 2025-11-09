extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_main_health_changed(new_health: Variant) -> void:
	print("new health from hp_label ",new_health)
	text= "HP " + str(new_health)
