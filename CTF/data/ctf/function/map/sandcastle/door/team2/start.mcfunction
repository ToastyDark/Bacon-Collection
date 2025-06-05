# Stop if door uses maxed out
execute if score $ctf_map_sandcastle_door_team2 value matches 3.. run return fail

# Add 1 to score
scoreboard players add $ctf_map_sandcastle_door_team2 value 1

# Check Door Stage
# Stage 1
execute if score $ctf_map_sandcastle_door_team2 value matches 1 run function ctf:map/sandcastle/door/team2/clone_door/forceload_add_all
execute if score $ctf_map_sandcastle_door_team2 value matches 1 run function ctf:map/sandcastle/door/team2/stage_1

# Stage 2
execute if score $ctf_map_sandcastle_door_team2 value matches 2 run function ctf:map/sandcastle/door/team2/clone_door/forceload_add_all
execute if score $ctf_map_sandcastle_door_team2 value matches 2 run function ctf:map/sandcastle/door/team2/stage_2

# Stage 3
execute if score $ctf_map_sandcastle_door_team2 value matches 3 run function ctf:map/sandcastle/door/team2/clone_door/forceload_add_all
execute if score $ctf_map_sandcastle_door_team2 value matches 3 run function ctf:map/sandcastle/door/team2/stage_3