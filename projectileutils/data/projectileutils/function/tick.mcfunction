
# If at least one player shot a bow, check all of the arrow entities, and try re-summoning them as items if neeeded
execute if entity @a[scores={projectileutils.bow=1}] run say e3rtinek
scoreboard players reset @a projectileutils.bow