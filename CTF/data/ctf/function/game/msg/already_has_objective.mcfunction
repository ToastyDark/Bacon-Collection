title @s actionbar {"text":"You cannot carry 2 objective items","bold": true,"color":"#d50e0e"}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.5 0.8 1

# Replace flag
execute if entity @s[tag=ctf_has_bomb,team=ctf_team1] run function ctf:game/flag/place/replace with storage ctf:game team2
execute if entity @s[tag=ctf_has_bomb,team=ctf_team2] run function ctf:game/flag/place/replace with storage ctf:game team1

# Replace Bomb
execute if entity @s[tag=ctf_has_flag] run function ctf:game/bomb/place/replace with storage ctf:game