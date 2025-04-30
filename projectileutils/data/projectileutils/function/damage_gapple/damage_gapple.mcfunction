playsound entity.item.break

execute as @a[distance=..3] run damage @s 5 explosion

summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:gold_ingot"},Tags:["random_velocity"],PickupDelay:32767}
summon item ~ ~ ~ {Item:{count:1, id:"minecraft:apple"},Tags:["random_velocity"],PickupDelay:32767}

execute store result entity @e[tag=random_velocity,limit=1] Motion[0] double 0.1 run random roll 0..5
execute store result entity @e[tag=random_velocity,limit=1] Motion[1] double 0.1 run random roll 0..5
execute store result entity @e[tag=random_velocity,limit=1] Motion[2] double 0.1 run random roll 0..5