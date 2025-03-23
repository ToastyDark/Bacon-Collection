execute if score @s museq.tick matches 0..976 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_128_split_142_143
execute if score @s museq.tick matches 978..1150 run function museq:songs/_ctf_note_hangup.mmp/ctf_note_hangup.mmp_split_128_split_142_144
execute if score @s museq.tick matches 1152.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
