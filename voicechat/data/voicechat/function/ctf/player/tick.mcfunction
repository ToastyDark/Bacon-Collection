# Prevent player from leaving voice chat if their VC is enabled
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2
#
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2


# Prevent player from joining another group if VC disabled
execute unless data storage ctf:game {voicechat:false} if entity @s[tag=!ctf_vc] run function voicechat:ctf/leave/leave


# Check if player disables VC
execute if entity @s[scores={rclick=1..}] if items entity @s weapon.mainhand minecraft:shears[minecraft:custom_data={ctf_flag_claw:1b}] if entity @s[x_rotation=-90..-50] run function voicechat:ctf/player/use