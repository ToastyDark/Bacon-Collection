playsound entity.item.break block @a ~ ~ ~
kill @e[tag=random_velocity,type=item]

execute as @a[distance=..6] run damage @s 5 explosion

summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:apple"},Tags:["random_velocity"],PickupDelay:32767}

execute as @e[type=item,tag=random_velocity] store result entity @s Motion[0] double 0.1 run random value -4..4
execute as @e[type=item,tag=random_velocity] store result entity @s Motion[1] double 0.1 run random value -4..4
execute as @e[type=item,tag=random_velocity] store result entity @s Motion[2] double 0.1 run random value -4..4