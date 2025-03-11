scoreboard players add @s value 1

# Spawn Lingering
execute if entity @s[scores={value=1}] run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:30,Radius:3f,Duration:200,potion_contents:{custom_color:16718876,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:1,show_particles:0b,show_icon:1b}]}}
execute if entity @s[scores={value=1}] run summon marker ~ ~ ~ {Tags:["ctf_healing_arrow","new"]}
execute if entity @s[scores={value=1}] run ride @n[distance=..2,type=marker,tag=ctf_healing_arrow] mount @s

# Kill arrow
execute if entity @s[scores={value=200..}] run kill @s


# Display Particles to players who can't see lingering potion
execute if entity @s[scores={value=2..}] run particle entity_effect{color:[1.000,0.000,0.000,1.00]} ~ ~ ~ 1.5 0 1.5 .5 20 force @a[distance=35..]