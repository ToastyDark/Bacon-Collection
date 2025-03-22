execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 0.749
execute if score @s museq.tick matches 2 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 0.749
execute if score @s museq.tick matches 4 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.498
execute if score @s museq.tick matches 8 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.122
execute if score @s museq.tick matches 14 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.059
execute if score @s museq.tick matches 18 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.0
execute if score @s museq.tick matches 22 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 0.891
execute if score @s museq.tick matches 26 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 0.749
execute if score @s museq.tick matches 28 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 0.891
execute if score @s museq.tick matches 30 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.0
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
