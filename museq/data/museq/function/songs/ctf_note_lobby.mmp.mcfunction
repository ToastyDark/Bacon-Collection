execute if score @s museq.tick matches 0..168 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_0
execute if score @s museq.tick matches 172..312 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1
execute if score @s museq.tick matches 312..412 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_2
execute if score @s museq.tick matches 412..512 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_3
execute if score @s museq.tick matches 516..632 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_4
execute if score @s museq.tick matches 636..744 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_5
execute if score @s museq.tick matches 744..872 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_6
execute if score @s museq.tick matches 876..980 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_7
execute if score @s museq.tick matches 984..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_8
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
#scoreboard players add @s museq.tick 1
