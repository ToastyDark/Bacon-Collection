# Check if game is already running
execute if data storage ctf:game {started:true} run return run function ctf:lobby/invite/msg/already_game

# Check if an invite is already active
execute unless data storage ctf:lobby {invite_active:false} run return run function ctf:lobby/invite/msg/already_invite with storage ctf:lobby

# Check if debug mode is enabeld (than only works for ToastyDark)
execute if data storage ctf:game {debug:true} unless score @s id matches 1 run return run function ctf:lobby/invite/msg/debug_enabled with storage ctf:lobby



# Start Timer
scoreboard players set $ctf_lobby_time value 60
function ctf:lobby/timer/update
schedule function ctf:lobby/timer/remove 1s replace
scoreboard players reset $ctf_lobby_timer_paused value

# Set who started invite
execute store result storage ctf:lobby invite_active int 1 run scoreboard players get @s id


# Broadcast
tellraw @a ["",{"selector":"@s","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}},{"text":" sent an invite to play ","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}},{"text":"CTF","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger ctf"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Warp","bold":true,"color":"gray"}]}}]
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5 1