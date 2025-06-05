# If Timer is Above 0
execute if score $ctf_lobby_time value matches 1.. run bossbar set ctf:lobby_timer visible true
execute if score $ctf_lobby_time value matches ..0 run bossbar set ctf:lobby_timer visible false

# If map is loading
execute if data storage ctf:temp {loading_map:active} run bossbar set ctf:lobby_timer visible true
execute unless data storage ctf:temp {loading_map:active} unless score $ctf_lobby_time value matches 1.. run bossbar set ctf:lobby_timer visible false


# Update bossbar when map is loading
execute unless data storage ctf:temp {loading_map:active} run return fail
# Update Value
bossbar set ctf:lobby_timer max 100
execute store result bossbar ctf:lobby_timer value run scoreboard players get $progress api.mazegen