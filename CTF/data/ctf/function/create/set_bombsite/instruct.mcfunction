# Team 1
execute if entity @s[scores={ctf_create_step=3}] run tellraw @s ["",{"text":"3. ","bold":true,"color":"gold"},{"text":"Stand in the location you would like to place each "},{"text":"Team 1 ","color":"red"},{"text":"bombsite","bold":true,"underlined":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"These are the positions where","color":"gray"},{"text":"\n"},{"text":"players can plant the bomb.","color":"gray"}]}},{"text":"."}]

# Team 2
execute if entity @s[scores={ctf_create_step=6}] run tellraw @s ["",{"text":"6. ","bold":true,"color":"gold"},{"text":"Stand in the location you would like to place each "},{"text":"Team 2 ","color":"blue"},{"text":"bombsite","bold":true,"underlined":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"These are the positions where","color":"gray"},{"text":"\n"},{"text":"players can plant the bomb.","color":"gray"}]}},{"text":"."}]

# How many to place
$tellraw @s ["",{"text":"There are ","color":"gray"},{"nbt":"map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place","storage":"ctf:temp","bold":true,"color":"dark_aqua"},{"text":" left to place","color":"gray"}]