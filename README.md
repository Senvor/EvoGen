<div align="center">

# EvoGen

**Evolution & Genesis Game**

A 2D game I'm making in Godot. Right now it's early days: a player you can walk around a tile map, plus the start of a character system built around generations.

![Hackatime](https://hackatime.hackclub.com/api/v1/badge/U0B4TE3MN1G/Senvor/EvoGen)

</div>

---

> **Status: in progress.** It's early days. There's a walkable player and a tile map so far, and the generations system is just getting started.

## What is it?

EvoGen (short for Evolution & Genesis) is a game I'm building in Godot. It's still early, so this README only covers what's actually in the project so far.

## What exists so far

- **A walkable player** - a `CharacterBody2D` that moves with WASD at a fixed speed
- **Directional animations** - idle and run animations for up, down and right (left just flips the right one), cut from a 32x32 sprite sheet
- **A tile map** - a `TileMapLayer` using a temporary placeholder tileset
- **A Character resource** - a data class for characters with a name, generation number, age, energy, traits, major events, alive/dead state with a cause of death, and links to a parent and children. It's set up but not used in the game yet.
- **Crisp pixel art** - textures use nearest-neighbour filtering so sprites don't blur

## Controls

| Key | Action |
|---|---|
| **W** | Move up |
| **A** | Move left |
| **S** | Move down |
| **D** | Move right |

## Getting Started

### Dependencies

- [Godot](https://godotengine.org/) 4.7 (the project uses the GL Compatibility renderer)

### Running it

```
git clone https://github.com/Senvor/EvoGen.git
```

1. Open Godot and **Import** the `project.godot` file from the cloned folder
2. Press **F5** (or the Play button) to run the main scene

## Tech Stack

- **Godot 4** - game engine
- **GDScript** - player movement, animation and the Character resource
- **godot_super-wakatime** - editor plugin that tracks coding time for Hackatime

## Project Structure

```
EvoGen/
├── scenes/
│   └── main.tscn             # main scene: tile map + player
├── scripts/
│   ├── player.gd             # WASD movement and animations
│   └── character.gd          # Character resource (generations, traits, parent/children)
├── sprites/
│   └── Player.png            # player sprite sheet
├── tilesets/
│   └── tile_placeholder.png  # temporary tiles
├── addons/godot_super-wakatime/  # time tracking plugin
└── project.godot             # Godot project settings and input map
```

## License

This project is licensed under the [MIT License](LICENSE). You're free to use, modify, and share it, as long as the original copyright notice is kept.
