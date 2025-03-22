execute if score @s museq.tick matches 0..628 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_0
execute if score @s museq.tick matches 628..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_761
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
