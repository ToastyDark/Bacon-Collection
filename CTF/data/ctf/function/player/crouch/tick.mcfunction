execute if predicate ctf:crouching run scoreboard players add @s ctf_crouch_time 1
execute if score @s ctf_crouch_time = @s ctf_crouch_time_prev run return run function ctf:player/crouch/reset
scoreboard players operation @s ctf_crouch_time_prev = @s ctf_crouch_time