execute if score @s museq.tick matches 0..264 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_0
execute if score @s museq.tick matches 264..360 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_1
execute if score @s museq.tick matches 364..428 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_2
execute if score @s museq.tick matches 428..488 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_3
execute if score @s museq.tick matches 488..546 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_4
execute if score @s museq.tick matches 548..608 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_5
execute if score @s museq.tick matches 608..684 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_6
execute if score @s museq.tick matches 686..800 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_7
execute if score @s museq.tick matches 804..912 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_8
execute if score @s museq.tick matches 912..976 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_9
execute if score @s museq.tick matches 978..1038 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_10
execute if score @s museq.tick matches 1040..1104 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_11
execute if score @s museq.tick matches 1104..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_12
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
