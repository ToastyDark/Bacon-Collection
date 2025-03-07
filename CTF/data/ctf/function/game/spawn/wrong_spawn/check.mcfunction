# Stop if left spawn
execute if score @s ctf_in_ops_spawn = @s ctf_in_ops_spawn_prev run return run scoreboard players reset @s ctf_in_ops_spawn

# Msg
execute if entity @s[scores={ctf_in_ops_spawn=2}] run title @s actionbar {"text":"You are at the wrong spawn!","bold": true,"color": "red"}

# Sync
scoreboard players operation @s ctf_in_ops_spawn_prev = @s ctf_in_ops_spawn