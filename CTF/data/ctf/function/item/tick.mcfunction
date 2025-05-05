# Player Tick for Items
execute as @a run function ctf:item/player_tick


# Healing Arrow
execute as @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{ctf_healing_arrow:true}}}}] at @s run function ctf:item/healing_arrow/tick

# Healing Marker (Remove Arrow if picked up)
#execute as @e[type=marker,tag=ctf_healing_arrow] unless predicate ctf:has_vehicle at @s run function ctf:item/healing_arrow/remove_early

# Camel's Owner Die Chceck
#execute as @e[type=camel,tag=ctf.camel_pet] unless score @s id = @a id 