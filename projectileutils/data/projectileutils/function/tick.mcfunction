
# If at least one player shot a bow, check all of the arrow entities, and try re-summoning them as items if neeeded
# Schedules cuz arrow is summoned on the next tick apparently???
execute if entity @a[scores={projectileutils.bow=1}] run schedule function projectileutils:tick_transmutate 1t

scoreboard players reset @a projectileutils.bow


# Trigger command for grounded items that just landed
execute as @e[type=item,tag=projectileutils.entity,nbt={OnGround: 1b}] unless data entity @s {Item:{components:{"minecraft:custom_data":{grounded:1b}}}} at @s run function projectileutils:landed_init with entity @s Item.components."minecraft:custom_data"