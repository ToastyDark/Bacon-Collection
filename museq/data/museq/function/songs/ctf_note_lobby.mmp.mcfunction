execute if score @s museq.tick matches 0..144 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_0
execute if score @s museq.tick matches 148..272 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_11
execute if score @s museq.tick matches 276..368 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_22
execute if score @s museq.tick matches 368..448 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_33
execute if score @s museq.tick matches 452..536 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_44
execute if score @s museq.tick matches 536..640 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_55
execute if score @s museq.tick matches 640..732 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_66
execute if score @s museq.tick matches 736..832 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_77
execute if score @s museq.tick matches 836..924 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_88
execute if score @s museq.tick matches 928..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_99
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
