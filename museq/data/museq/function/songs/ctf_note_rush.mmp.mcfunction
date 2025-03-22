execute if score @s museq.tick matches 0..128 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_0
execute if score @s museq.tick matches 128..252 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_111
execute if score @s museq.tick matches 252..332 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_222
execute if score @s museq.tick matches 332..414 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_333
execute if score @s museq.tick matches 415..496 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_444
execute if score @s museq.tick matches 496..702 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_555
execute if score @s museq.tick matches 704..928 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_666
execute if score @s museq.tick matches 934..1080 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_777
execute if score @s museq.tick matches 1082..1176 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_888
execute if score @s museq.tick matches 1176..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_999
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
