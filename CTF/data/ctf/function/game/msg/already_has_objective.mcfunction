title @s actionbar {"text":"You cannot carry 2 objective items","bold": true,"color":"#d50e0e"}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.5 0.8 1

# Replace flag
execute if entity @s[team=ctf_team1] run function ctf:game/flag/replace/replace with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:game/flag/replace/replace with storage ctf:game team2