tag @s add ctf_respawned

gamemode adventure @s

# Invisible until leave
effect give @s invisibility infinite 255 true

# Heal Player
effect give @s minecraft:regeneration 1 255 true

# XP set
experience set @s 40 levels
experience set @s 0 points

# Move Cooldown
scoreboard players set @s ctf_respawn_freeze_cd 1