#Reset EXP Bar if scores are the same
experience set @s 0 points

# Reset if scores are the same
scoreboard players reset @s ctf_bombsite_click
scoreboard players reset @s ctf_bombsite_click_prev


# Cancel Msg (if planting)
function ctf:game/_bomb/plant/msg/cancel_planting