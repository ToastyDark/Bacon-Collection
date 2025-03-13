execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.782
execute if score @s museq.tick matches 6 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 12 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.587
execute if score @s museq.tick matches 22 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.587
execute if score @s museq.tick matches 34 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 50 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.682
execute if score @s museq.tick matches 58 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 60 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.782
execute if score @s museq.tick matches 60 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.587
execute if score @s museq.tick matches 62 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 68 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.335
execute if score @s museq.tick matches 72 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 1.682
execute if score @s museq.tick matches 82 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 124 run playsound minecraft:block.note_block.harp record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 8 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 16 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 24 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 1.414
execute if score @s museq.tick matches 40 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 52 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 1.414
execute if score @s museq.tick matches 64 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 1.414
execute if score @s museq.tick matches 66 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 74 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 1.26
execute if score @s museq.tick matches 116 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 2.0
execute if score @s museq.tick matches 120 run playsound minecraft:block.note_block.icechime record @s ~ ~ ~ 1.0 1.587
scoreboard players add @s museq.tick 1
execute if score @s museq.tick matches 132.. run scoreboard players set @s museq.tick 0
