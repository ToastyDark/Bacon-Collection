scoreboard players add @s value 1

# Spawn Lingering
execute if entity @s[scores={value=1}] at @s run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:30,Radius:5f,Duration:200,potion_contents:{custom_color:16718876,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:1,show_particles:0b,show_icon:1b}]}}

# Kill arrow
execute if entity @s[scores={value=200..}] run kill @s