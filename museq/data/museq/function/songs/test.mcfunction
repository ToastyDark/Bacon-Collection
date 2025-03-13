execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.595
execute if score @s museq.tick matches 8 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.472
execute if score @s museq.tick matches 12 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.595
execute if score @s museq.tick matches 16 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.794
execute if score @s museq.tick matches 20 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.53 0.794
execute if score @s museq.tick matches 24 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.19 0.794
execute if score @s museq.tick matches 28 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.68 0.794
execute if score @s museq.tick matches 32 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.891
execute if score @s museq.tick matches 40 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.0 0.707
execute if score @s museq.tick matches 44 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.21 0.891
execute if score @s museq.tick matches 48 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1.14 1.189
execute if score @s museq.tick matches 52 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.38 1.189
execute if score @s museq.tick matches 56 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.12 1.189
execute if score @s museq.tick matches 60 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.8 0.595
execute if score @s museq.tick matches 62 run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.97 0.595
execute if score @s museq.tick matches 0 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.595
execute if score @s museq.tick matches 12 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.794
execute if score @s museq.tick matches 32 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.891
execute if score @s museq.tick matches 44 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 1.189
execute if score @s museq.tick matches 52 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.595
execute if score @s museq.tick matches 56 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.707
execute if score @s museq.tick matches 60 run playsound minecraft:block.note_block.bass record @s ~ ~ ~ 1.19 0.794
scoreboard players add @s museq.tick 1
execute if score @s museq.tick matches 64.. run scoreboard players set @s museq.tick 0
