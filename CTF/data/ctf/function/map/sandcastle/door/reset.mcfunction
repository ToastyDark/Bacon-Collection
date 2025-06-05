# Reset Door Uses
scoreboard players set $ctf_map_sandcastle_door_team1 value 0
scoreboard players set $ctf_map_sandcastle_door_team2 value 0

# Forceload Door Chunks
function ctf:map/sandcastle/door/team1/map_door/forceload_add
function ctf:map/sandcastle/door/team2/map_door/forceload_add


# Replace Doors
schedule function ctf:map/sandcastle/door/team1/reset 2t replace
schedule function ctf:map/sandcastle/door/team2/reset 2t replace

# End Reset
schedule function ctf:map/sandcastle/reset_end 4t replace