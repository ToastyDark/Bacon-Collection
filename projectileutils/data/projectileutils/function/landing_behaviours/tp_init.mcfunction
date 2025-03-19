data modify storage projectileutils.temp UUID set from entity @s Item.components.minecraft:custom_data.owner
data modify storage projectileutils.temp compare_UUID set from storage projectileutils.temp UUID

execute as @a run function projectileutils:landing_behaviours/tp_find