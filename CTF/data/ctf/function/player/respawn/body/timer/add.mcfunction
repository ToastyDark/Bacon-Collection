# Get Current Time
execute store result score $temp temp run data get entity @s data.timer

# Add 1 to Timer
scoreboard players add $temp temp 1

# Store Back
execute store result entity @s data.timer int 1 run scoreboard players get $temp temp