
# If at least one player shot a bow, check all of the arrow entities, and try re-summoning them as items if neeeded
# Schedules cuz arrow is summoned on the next tick apparently???
execute if entity @a[scores={projectileutils.bow=1}] run schedule function projectileutils:tick_transmutate 1t

scoreboard players reset @a projectileutils.bow