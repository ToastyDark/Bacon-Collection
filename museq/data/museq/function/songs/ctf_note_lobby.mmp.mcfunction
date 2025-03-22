execute if score @s museq.tick matches 0..272 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_0
execute if score @s museq.tick matches 276..448 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_31
execute if score @s museq.tick matches 452..640 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_62
execute if score @s museq.tick matches 640..832 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_93
execute if score @s museq.tick matches 836..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_124
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
