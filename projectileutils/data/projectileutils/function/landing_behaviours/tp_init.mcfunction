data modify storage projectileutils:temp UUID set from entity @s Item.components.minecraft:custom_data.owner

data modify storage projectileutils:tp lc.x set from entity @s Pos[0]
data modify storage projectileutils:tp lc.y set from entity @s Pos[1]
data modify storage projectileutils:tp lc.z set from entity @s Pos[2]

function projectileutils:landing_behaviours/tp_makeinfo with storage projectileutils:tp lc

execute as @a run function projectileutils:landing_behaviours/tp_find

kill @s

# /give Jake_28 minecraft:arrow[minecraft:custom_data={summon_type:"item", summon_data:'Item:{count: 1, id: "minecraft:splash_potion"}, PickupDelay:10', function:"projectileutils:landing_behaviours/tp_init"}]