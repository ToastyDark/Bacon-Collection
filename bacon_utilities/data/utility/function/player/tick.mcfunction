# Actionbar Cooldown
execute if entity @s[scores={actionbar_cd=0..}] run scoreboard players add @s actionbar_cd 1
execute if entity @s[scores={actionbar_cd=50..}] run scoreboard players reset @s actionbar_cd