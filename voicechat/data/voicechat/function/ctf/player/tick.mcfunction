# Prevent player from leaving voice chat if their VC is enabled
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2
#
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2


# Prevent player from joining another group if VC disabled
execute unless data storage ctf:game {voicechat:false} if entity @s[tag=!ctf_vc] run function voicechat:ctf/leave/leave