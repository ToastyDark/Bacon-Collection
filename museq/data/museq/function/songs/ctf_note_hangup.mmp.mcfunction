execute if score @s museq.tick matches 0..504 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_0
execute if score @s museq.tick matches 504..863 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_364
execute if score @s museq.tick matches 864..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_728
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
