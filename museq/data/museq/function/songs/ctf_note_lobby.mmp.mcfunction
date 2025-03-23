execute if score @s museq.tick matches 0..644 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_212_split_319_split_373_split_401_split_416_split_424_split_429_430
execute if score @s museq.tick matches 656..1020 run function museq:songs/_ctf_note_lobby.mmp/ctf_note_lobby.mmp_split_212_split_319_split_373_split_401_split_416_split_424_split_429_431
execute if score @s museq.tick matches 1024.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
