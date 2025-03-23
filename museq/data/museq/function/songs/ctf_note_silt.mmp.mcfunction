execute if score @s museq.tick matches 0..568 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_split_26_27
execute if score @s museq.tick matches 572..766 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_split_26_28
execute if score @s museq.tick matches 768.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
