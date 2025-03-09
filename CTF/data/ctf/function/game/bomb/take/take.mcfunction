# Remove TNT from groun
kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:tnt"}}]

# Set Player as Bomb Stolen
function ctf:game/bomb/take/player_data


# Set Stolen
execute if entity @s[team=ctf_team1] run data modify storage ctf:game bomb.team_has set value 1
execute if entity @s[team=ctf_team2] run data modify storage ctf:game bomb.team_has set value 2

# MSG
execute if entity @s[team=ctf_team1] run function ctf:game/bomb/take/msg/display with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:game/bomb/take/msg/display with storage ctf:game team2