
# If at least one player shot a bow, check all of the arrow entities, and try re-summoning them as items if neeeded
execute if entity @a[scores={projectileutils.bow=1}] as @e[type=minecraft:arrow] at @s run function projectileutils:transmutate with entity @s item.components."minecraft:custom_data"