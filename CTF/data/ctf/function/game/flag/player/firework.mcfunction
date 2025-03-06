# Execute if not time
execute unless entity @s[scores={ctf_flag_time_firework=160..}] run return fail

# Spawn firework
scoreboard players reset @s ctf_flag_time_firework
execute at @s run summon firework_rocket ~ ~ ~ {Life:20,LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;16777215]}]}}}}