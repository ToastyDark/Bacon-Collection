# If just starting, show creating message and display steps
execute if entity @s[scores={ctf_create_step=1}] run tellraw @s {"text":"You are now creating a CTF map!","bold":true,"underlined":true,"color":"gold"}
execute if entity @s[scores={ctf_create_step=1}] run tellraw @s ["",{"text":"1. ","bold":true,"color":"gold"},{"text":"Right click the egg standing at the position you would like "},{"text":"Team 1 ","bold":true,"color":"red"},{"text":"to spawn."}]

# Begin starting work for other team
$execute if entity @s[scores={ctf_create_step=4}] run data modify storage ctf:temp map_create_data.player.$(player_id).current_team set value 2
execute if entity @s[scores={ctf_create_step=4}] run tellraw @s ["",{"text":"4. ","bold":true,"color":"gold"},{"text":"Right click the egg standing at the position you would like "},{"text":"Team 2 ","bold":true,"color":"blue"},{"text":"to spawn."}]