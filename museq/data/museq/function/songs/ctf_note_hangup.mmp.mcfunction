execute if score @s museq.tick matches 0..992 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_638_split_958_split_1119_split_1200_split_1241_split_1262_split_1273_split_1279_split_1283_1284
execute if score @s museq.tick matches 992..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_638_split_958_split_1119_split_1200_split_1241_split_1262_split_1273_split_1279_split_1283_1285
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
