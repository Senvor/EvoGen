extends Node

signal generation_changed

var current_character: Character = null
var all_characters: Array[Character] = []

func start_new_bloodline() -> void:
	var first_character := Character.new("Alex", 1, null)
	current_character = first_character
	all_characters.append(first_character)

func create_offspring(p_name: String) -> Character:
	if current_character.energy < 100:
		print("Not enough energy!")
		return null
	else:
		print("Your baby is being produced...")
		current_character.energy -= 100
		var child := Character.new(p_name, current_character.generation + 1, current_character)
		all_characters.append(child)
		return child

func advance_generation(new_character: Character) -> void:
	current_character.die()
	current_character = new_character
	generation_changed.emit()
