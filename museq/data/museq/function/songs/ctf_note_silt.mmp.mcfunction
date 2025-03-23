execute if score @s museq.tick matches 0..240 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_0
execute if score @s museq.tick matches 244..348 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_1
execute if score @s museq.tick matches 348..444 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_2
execute if score @s museq.tick matches 446..568 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_3
execute if score @s museq.tick matches 572..740 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_4
execute if score @s museq.tick matches 744..766 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_5
execute if score @s museq.tick matches 768.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
