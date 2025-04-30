# Check if times are the same
execute if score @s ctf_bomb_time = @s ctf_bomb_time_prev run scoreboard players set @s ctf_bomb_time 0

# If they are, equalize them
scoreboard players operation @s ctf_bomb_time = @s ctf_bomb_time_prev