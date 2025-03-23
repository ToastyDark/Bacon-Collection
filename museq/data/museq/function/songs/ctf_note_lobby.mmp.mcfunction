execute if score @s museq.tick matches 0..312 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_43_44
execute if score @s museq.tick matches 312..512 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_43_45
execute if score @s museq.tick matches 516..744 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_43_46
execute if score @s museq.tick matches 744..980 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_43_47
execute if score @s museq.tick matches 984..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_43_48
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
