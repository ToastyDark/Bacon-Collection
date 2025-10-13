# Get Game's respawn time
data modify entity @s data.sink set from storage ctf:game player_respawn_time

# Store in Scores 
execute store result score $body_age temp run data get entity @s data.timer
execute store result score $sink_time temp run data get entity @s data.sink

# Convert Sink to Ticks
scoreboard players set $20 value 20
scoreboard players operation $sink_time temp *= $20 value

# Store Kill Time and add 3 second
execute store result score $kill_time temp run scoreboard players get $sink_time temp
scoreboard players add $kill_time temp 40