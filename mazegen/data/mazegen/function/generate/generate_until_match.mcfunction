# Found a match, return early
execute if function mazegen:generate/doesmatch run return 1

# Place this
execute as @e[tag=mazegen_available_to_pick,sort=random,limit=1] at @s run clone ~-3 ~ ~-3 ~3 ~32 ~3 -411 80 -113
execute as @e[tag=mazegen_available_to_pick,sort=random,limit=1] at @s run tag @s remove mazegen_available_to_pick

# Found a match, return early
execute if function mazegen:generate/doesmatch run return 1

# Rotate 90
execute if function mazegen:generate/doesmatch run return 1

# Rotate 180
execute if function mazegen:generate/doesmatch run return 1

# Rotate 270
execute if function mazegen:generate/doesmatch run return 1

# Not a match, but there's more available
execute if entity @e[tag=mazegen_available_to_pick] as @r[tag=mazegen_available_to_pick] run function mazegen:generate/generate_until_match

# No matches
return 0