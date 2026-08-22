class_name Character
extends Resource

@export var character_name: String = ""
@export var generation: int = 1
@export var is_alive: bool = true
@export var death_cause: String = ""

var parent: Character = null
var children: Array[Character] = []
