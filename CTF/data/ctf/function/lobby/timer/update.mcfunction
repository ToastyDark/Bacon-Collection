# Bossbar Update
execute store result bossbar ctf:lobby_timer value run scoreboard players get $ctf_lobby_time value
execute unless data storage ctf:temp {loading_map:active} run bossbar set ctf:lobby_timer name ["",{"text":"CTF Starts in ","bold":true,"color":"#d58a09"},{"score":{"name":"$ctf_lobby_time","objective":"value"},"bold":true,"color":"#e0a308"}]

# Playres
bossbar set ctf:lobby_timer players @a[tag=ctf_lobby]


# Check if have enough players
function ctf:lobby/queue/empty/check
#execute unless score $ctf_players_queued_count value matches 2.. run



# Countdown Text and Sounds
execute as @a[tag=ctf_lobby] at @s run function ctf:lobby/timer/cd/main

# Start Game
execute if score $ctf_lobby_time value matches 0 run function ctf:game/start

# Reset Map
execute if score $ctf_lobby_time value matches 15 run function ctf:map/reset with storage ctf:game


# Turn this off if needed
execute if data storage ctf:temp {loading_map_done:true} run data modify storage ctf:temp loading_map_done set value false