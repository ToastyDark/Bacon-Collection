# Healing Arrow
execute as @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{ctf_healing_arrow:true}}}}] at @s run function ctf:item/healing_arrow/tick

# Healing Marker
execute as @e[type=marker,tag=ctf_healing_arrow,tag=!new] if entity @s[predicate=!ctf:has_vehicle] at @s run function ctf:item/healing_arrow/remove_early