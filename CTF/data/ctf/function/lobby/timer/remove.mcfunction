# Loop
schedule function ctf:lobby/timer/remove 1s replace

# Stop if Timer isn't above 0
execute unless score ctf_lobby_timer_paused value matches 0.. run return fail

# Stop if Timer Paused
execute if score $ctf_lobby_timer_paused value matches 1 run return fail

# Stop if not enough players in queue
execute if score $ctf_lobby_time value matches ..21 if data storage ctf:lobby {enough_players:false} run return fail

# Stop if map is currently being loaded
execute if data storage ctf:temp {loading_map:active} run return fail
bossbar set ctf:lobby_timer max 60



# Remove Time
scoreboard players remove $ctf_lobby_time value 1

# Update Stuff
function ctf:lobby/timer/update