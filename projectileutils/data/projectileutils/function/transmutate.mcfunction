# Old code, hardcoded to transform into snowball

# summon item ~ ~ ~ {Item:{count: 1, id: "minecraft:snowball"}, Tags:["new_snowball"], PickupDelay:10}
# data modify entity @e[type=item,tag=new_snowball,limit=1] Motion set from entity @s Motion
# tag @e[type=item] remove new_snowball
# kill @s

# Transform based on custom data
# EX: $(summon_data): Item:{count: 1, id: "minecraft:snowball"}, PickupDelay:10
# EX: $(summon_type): item

# /give Jake_28 minecraft:arrow[minecraft:custom_data={summon_type:"item", summon_data:'Item:{count: 1, id: "minecraft:apple"}, PickupDelay:10', function:"projectileutils:test_function"}]

$summon $(summon_type) ~ ~ ~ {$(summon_data), Tags:["projectileutils.summon", "projectileutils.entity"]}
data modify entity @e[type=item,tag=projectileutils.summon,limit=1] Item set from entity @s item
data modify entity @e[type=item,tag=projectileutils.summon,limit=1] Motion set from entity @s Motion
tag @e[type=item] remove projectileutils.summon
kill @s