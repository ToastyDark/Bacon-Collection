# Execute if not time
execute unless entity @s[scores={ctf_flag_time_firework=160..}] run return fail

# Reset Timer
scoreboard players reset @s ctf_flag_time_firework

# Stop if player crouching
execute if entity @s[scores={ctf_crouch_time=1..}] run return fail

# Spawn firework
$execute at @s run summon firework_rocket ~ ~ ~ {Life:20,LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;$(color_dec)]}]}}}}
#execute at @s run summon firework_rocket ~ ~ ~ {Life:20,LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;16777215]}]}}}}