# Bossbar Update
execute store result bossbar ctf:lobby_timer value run scoreboard players get $ctf_lobby_time value
execute unless data storage ctf:temp {loading_map:active} run bossbar set ctf:lobby_timer name ["",{"text":"CTF Starts in ","bold":true,"color":"#d58a09"},{"score":{"name":"$ctf_lobby_time","objective":"value"},"bold":true,"color":"#e0a308"}]

# Playres
bossbar set ctf:lobby_timer players @a[tag=ctf_lobby]


# Check if have enough players
function ctf:lobby/queue/empty/check
#execute unless score $ctf_players_queued_count value matches 2.. run




# Title Countdown
execute if score $ctf_lobby_time value matches 1..5 run title @a times 5 10 5
execute if score $ctf_lobby_time value matches 1..5 run title @a title {"text":""}
execute if score $ctf_lobby_time value matches 5 run title @a subtitle {"text":"5","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 4 run title @a subtitle {"text":"4","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 3 run title @a subtitle {"text":"3","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 2 run title @a subtitle {"text":"2","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 1 run title @a subtitle {"text":"1","bold":true,"color":"gold"}


# Start Game
execute if score $ctf_lobby_time value matches 0 run function ctf:game/start





# Turn this off if needed
execute if data storage ctf:temp {loading_map_done:true} run data modify storage ctftemp loading_map_done set value false