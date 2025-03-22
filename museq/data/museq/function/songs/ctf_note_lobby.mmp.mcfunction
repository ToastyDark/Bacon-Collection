execute if score @s museq.tick matches 0..536 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1524
execute if score @s museq.tick matches 540..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1779
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
