# Remove 1 (from tick)
scoreboard players remove @s ctf_respawn_cd 1


#If 20.. show respawn countdown message, then Reset Player Display Timer
scoreboard players add @s ctf_respawn_cd_display 1
execute if entity @s[scores={ctf_respawn_cd_display=20..}] run function ctf:player/respawn/timer/display


execute if entity @s[scores={ctf_respawn_cd_display=20..}] run scoreboard players reset @s ctf_respawn_cd_display


# ------------------------------------------------
# TP to Armor Stand
execute at @s as @e[type=area_effect_cloud,tag=ctf_freeze] if score @s id = @p id run function ctf:player/respawn/timer/freeze_tp



# Respawn on 0
execute if entity @s[scores={ctf_respawn_cd=0}] run function ctf:player/respawn/timer/done