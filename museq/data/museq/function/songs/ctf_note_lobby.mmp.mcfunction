execute if score @s museq.tick matches 0..980 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_22_23execute if score @s museq.tick matches 984..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_22_24execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
