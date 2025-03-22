execute if score @s museq.tick matches 0..318 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_2547
execute if score @s museq.tick matches 320..488 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_2668
execute if score @s museq.tick matches 488..766 run function museq:songs/_ctf_note_silt.mmp/ctf_note_silt.mmp_2789
execute if score @s museq.tick matches 768.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
