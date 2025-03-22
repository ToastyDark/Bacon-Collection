execute if score @s museq.tick matches 0..406 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_0
execute if score @s museq.tick matches 406..552 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_156
execute if score @s museq.tick matches 552..760 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_312
execute if score @s museq.tick matches 764..990 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_468
execute if score @s museq.tick matches 990..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_624
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
