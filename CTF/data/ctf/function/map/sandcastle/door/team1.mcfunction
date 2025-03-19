# Stop if door uses maxed out
execute if score $ctf_map_sandcastle_door_team1 value matches ..3 run scoreboard players add $ctf_map_sandcastle_door_team1 value 1

# Check Door Stage
# Stage 1
execute if score $ctf_map_sandcastle_door_team1 value matches 1 run execute in clone run setblock -735 68 -278 minecraft:redstone_block

# Stage 2
execute if score $ctf_map_sandcastle_door_team1 value matches 2 run execute in clone run setblock -735 68 -268 minecraft:redstone_block

# Stage 3
execute if score $ctf_map_sandcastle_door_team1 value matches 3 run execute in clone run setblock -735 68 -258 minecraft:redstone_block