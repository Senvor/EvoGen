extends Node2D

@onready var bloodline: Node = $Bloodline

func _ready() -> void:
	bloodline.start_new_bloodline()
	bloodline.generation_changed.connect(on_generation_changed)
func on_generation_changed() -> void:
	print("A generation has changed!")
