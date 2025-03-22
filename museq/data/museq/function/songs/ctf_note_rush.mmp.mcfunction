execute if score @s museq.tick matches 0..252 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_0
execute if score @s museq.tick matches 256..416 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_156
execute if score @s museq.tick matches 416..704 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_312
execute if score @s museq.tick matches 704..1084 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_468
execute if score @s museq.tick matches 1084..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_624
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
