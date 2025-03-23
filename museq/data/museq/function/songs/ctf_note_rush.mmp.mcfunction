execute if score @s museq.tick matches 0..1040 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_133_split_148_149
execute if score @s museq.tick matches 1040..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_133_split_148_150
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
