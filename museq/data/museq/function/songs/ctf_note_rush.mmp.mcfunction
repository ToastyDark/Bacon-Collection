execute if score @s museq.tick matches 0..496 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_2034
execute if score @s museq.tick matches 496..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_2849
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
