execute if score @s museq.tick matches 0..488 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_64_65
execute if score @s museq.tick matches 488..800 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_64_66
execute if score @s museq.tick matches 804..1104 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_64_67
execute if score @s museq.tick matches 1104..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_64_68
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
