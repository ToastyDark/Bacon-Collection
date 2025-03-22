execute if score @s museq.tick matches 0..288 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_0
execute if score @s museq.tick matches 292..404 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_111
execute if score @s museq.tick matches 406..480 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_222
execute if score @s museq.tick matches 480..550 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_333
execute if score @s museq.tick matches 550..626 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_444
execute if score @s museq.tick matches 626..756 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_555
execute if score @s museq.tick matches 756..904 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_666
execute if score @s museq.tick matches 904..988 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_777
execute if score @s museq.tick matches 988..1064 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_888
execute if score @s museq.tick matches 1066..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_999
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
