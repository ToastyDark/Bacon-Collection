scoreboard players reset @s ctf.invite

# Start Timer
scoreboard players set $ctf_lobby_time value 50
function ctf:lobby/timer/update
schedule function ctf:lobby/timer/remove 1s replace
scoreboard players set $ctf_lobby_timer_enabled value 1

# Broadcast
tellraw @a ["",{"selector":"@s","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}},{"text":" sent an invite to play ","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}},{"text":"CTF","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}}]
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5 1