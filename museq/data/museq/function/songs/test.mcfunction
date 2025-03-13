execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.335
execute if score @s museq.tick matches 8 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.189
execute if score @s museq.tick matches 16 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.059
execute if score @s museq.tick matches 24 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.944
scoreboard players add @s museq.tick 1
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
