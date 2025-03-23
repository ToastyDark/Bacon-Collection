execute if score @s museq.tick matches 0..336 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_67_68
execute if score @s museq.tick matches 336..712 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_67_69
execute if score @s museq.tick matches 712..1184 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_67_70
execute if score @s museq.tick matches 1184..1278 run function museq:songs/_ctf_note_rush.mmp/ctf_note_rush.mmp_split_67_71
execute if score @s museq.tick matches 1280.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
