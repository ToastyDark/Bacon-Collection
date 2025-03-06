# Pick a random tile template
execute as @e[type=marker,tag=mazegen_available_to_pick,sort=random,limit=1] run tag @s add mazegen_currently_picked

# Clone that tile template to the temporary location, "-411 80 -113".
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run clone ~-3 ~ ~-3 ~3 ~16 ~3 -411 80 -113