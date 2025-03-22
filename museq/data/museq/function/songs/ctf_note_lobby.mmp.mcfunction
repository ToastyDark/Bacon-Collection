execute if score @s museq.tick matches 0..396 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1092
execute if score @s museq.tick matches 400..712 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1213
execute if score @s museq.tick matches 720..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_1334
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
