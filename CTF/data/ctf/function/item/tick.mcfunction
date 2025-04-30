# Healing Arrow
execute as @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{ctf_healing_arrow:true}}}}] at @s run function ctf:item/healing_arrow/tick

# Healing Marker (Remove Arrow if picked up)
#execute as @e[type=marker,tag=ctf_healing_arrow] unless predicate ctf:has_vehicle at @s run function ctf:item/healing_arrow/remove_early


# Resistance Armor (cactus kit)
execute as @a if items entity @s armor.* *[minecraft:custom_data={ctf_resistance_armor:true}] at @s run function ctf:item/resistance_armor/tick

# Slow Shears (cactus kit)
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data={ctf_slow_shears:true}] at @s run function ctf:item/slow_shears/tick
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data={ctf_slow_shears:true}] at @s run function ctf:item/slow_shears/tick

# Automatic crossbow
execute as @a run function ctf:item/automatic_crossbow/tick