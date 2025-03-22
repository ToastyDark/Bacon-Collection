execute if score @s museq.tick matches 0..248 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_0
execute if score @s museq.tick matches 252..352 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_36
execute if score @s museq.tick matches 352..448 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_72
execute if score @s museq.tick matches 448..580 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_108
execute if score @s museq.tick matches 584..766 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_144
execute if score @s museq.tick matches 768.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
