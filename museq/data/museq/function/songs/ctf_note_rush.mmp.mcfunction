execute if score @s museq.tick matches 0..360 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_1455
execute if score @s museq.tick matches 360..864 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_1819
execute if score @s museq.tick matches 864..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_2183
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
