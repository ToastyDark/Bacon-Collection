execute if score @s museq.tick matches 0..400 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_3666
execute if score @s museq.tick matches 400..766 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_3923
execute if score @s museq.tick matches 768.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
