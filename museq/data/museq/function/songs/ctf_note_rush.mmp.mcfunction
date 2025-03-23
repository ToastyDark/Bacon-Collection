execute if score @s museq.tick matches 0..1056 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_665_split_999_split_1167_split_1252_split_1295_split_1317_split_1329_split_1336_split_1340_1341
execute if score @s museq.tick matches 1056..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_665_split_999_split_1167_split_1252_split_1295_split_1317_split_1329_split_1336_split_1340_1342
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
