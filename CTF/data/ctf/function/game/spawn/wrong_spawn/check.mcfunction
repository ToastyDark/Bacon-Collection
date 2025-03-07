# Stop if left spawn
execute if score @s ctf_in_ops_spawn = @s ctf_in_ops_spawn_prev run return run scoreboard players reset @s ctf_in_ops_spawn

# Msg
execute if entity @s[scores={ctf_in_ops_spawn=1..}] run title @s actionbar {"text":"You are at the wrong spawn!","bold": true,"color": "red"}
execute if entity @s[scores={ctf_in_ops_spawn=1}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.5 0.8 1

# Sync
scoreboard players operation @s ctf_in_ops_spawn_prev = @s ctf_in_ops_spawn