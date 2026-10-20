class_name Character
extends Resource

@export var character_name: String = ""
@export var generation: int = 1
@export var is_alive: bool = true
@export var death_cause: String = ""
@export var age: float = 0.0
@export var energy: int = 200
@export var traits: Dictionary = {}
@export var major_events: Array[String] = []

var parent: Character = null
var children: Array[Character] = []

func _init(p_name: String = "", p_generation: int = 1, p_parent: Character = null) -> void:
	character_name = p_name
	generation = p_generation
	parent = p_parent

func die(cause: String = "") -> void:
	is_alive = false
	death_cause = cause
