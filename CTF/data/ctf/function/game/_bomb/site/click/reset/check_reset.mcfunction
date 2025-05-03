# Reset if scores are the same
execute if score @s ctf_bombsite_click = @s ctf_bombsite_click_prev run scoreboard players reset @s ctf_bombsite_click
execute if score @s ctf_bombsite_click = @s ctf_bombsite_click_prev run scoreboard players reset @s ctf_bombsite_click_prev

#Reset EXP Bar
execute if score @s ctf_bombsite_click = @s ctf_bombsite_click_prev run return run experience set @s 0 points

# Equal scores
scoreboard players operation @s ctf_bombsite_click_prev = @s ctf_bombsite_click