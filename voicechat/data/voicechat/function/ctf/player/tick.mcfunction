# Prevent player from leaving voice chat if their VC is enabled
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2
#
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2


# Prevent player from joining another group if VC disabled
execute unless data storage ctf:game {voicechat:false} if entity @s[tag=!ctf_vc] run function voicechat:ctf/leave/leave


# Check if player disables VC
execute if entity @s[scores={rclick=1..},x_rotation=-90..-50] if items entity @s weapon.mainhand minecraft:shears[minecraft:custom_data={ctf_flag_claw:1b}] unless entity @s[scores={ctf_comms_change_cd=1..}] run function voicechat:ctf/player/use


# Comms CD
execute as @a[scores={ctf_comms_change_cd=1..}] run scoreboard players add @s ctf_comms_change_cd 1
execute as @a[scores={ctf_comms_change_cd=6..}] run stopsound @s master minecraft:entity.guardian.attack
execute as @a[scores={ctf_comms_change_cd=6..}] run scoreboard players reset @s ctf_comms_change_cd