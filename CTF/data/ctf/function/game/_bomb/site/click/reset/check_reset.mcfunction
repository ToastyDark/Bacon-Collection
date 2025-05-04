#Reset
execute if score @s ctf_bombsite_click = @s ctf_bombsite_click_prev run function ctf:game/_bomb/site/click/reset/reset


# Equal scores
scoreboard players operation @s ctf_bombsite_click_prev = @s ctf_bombsite_click