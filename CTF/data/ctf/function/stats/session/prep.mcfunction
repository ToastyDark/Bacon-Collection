# Amount to store

# Get data needed to prepare to store a particular set of stats
execute store result storage ctf:temp stats.player_id int 1 run scoreboard players get @s id
execute store result storage ctf:temp stats.session_id int 1 run scoreboard players get $ctf_session value