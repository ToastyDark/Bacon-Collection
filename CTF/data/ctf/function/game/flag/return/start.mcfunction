# Remove Tag Data
tag @s remove ctf_has_flag
scoreboard players reset @s ctf_flag_time
scoreboard players reset @s ctf_flag_time_firework

# Set Temp Team Data
function ctf:game/flag/set_temp_team