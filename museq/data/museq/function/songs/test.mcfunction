execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.944
execute if score @s museq.tick matches 8 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.189
execute if score @s museq.tick matches 16 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.26
execute if score @s museq.tick matches 24 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.707
execute if score @s museq.tick matches 32 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.794
execute if score @s museq.tick matches 40 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 48 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.944
execute if score @s museq.tick matches 56 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 64 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.944
execute if score @s museq.tick matches 72 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.189
execute if score @s museq.tick matches 80 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 1.26
execute if score @s museq.tick matches 88 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.707
execute if score @s museq.tick matches 96 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.794
execute if score @s museq.tick matches 104 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 112 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.944
execute if score @s museq.tick matches 120 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.63
execute if score @s museq.tick matches 12 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.63
execute if score @s museq.tick matches 24 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.707
execute if score @s museq.tick matches 40 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 48 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.841
execute if score @s museq.tick matches 56 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.0 0.944
scoreboard players add @s museq.tick 1
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
