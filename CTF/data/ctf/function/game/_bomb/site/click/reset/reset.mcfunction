#Reset EXP Bar if scores are the same
experience set @s 0 points

# Reset if scores are the same
scoreboard players reset @s ctf_bombsite_click
scoreboard players reset @s ctf_bombsite_click_prev


# Cancel Msg (if planting)
execute if data storage ctf:game {bomb_planted:false} run function ctf:game/_bomb/plant/msg/cancel_planting

# Cancel Msg (if diffusing)
execute if data storage ctf:game {bomb_planted:team1} if entity @s[team=ctf_team2] run function ctf:game/_bomb/diffuse/msg/cancel_diffuse
execute if data storage ctf:game {bomb_planted:team2} if entity @s[team=ctf_team1] run function ctf:game/_bomb/diffuse/msg/cancel_diffuse