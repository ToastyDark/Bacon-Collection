# Remove TNT from groun
kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:tnt"}}]

# Set Player as Flag Stolen
function ctf:game/bomb/take/player_data


# Set Stolen
schedule function ctf:game/bomb/take/set_data 2t append

# MSG
execute if entity @s[team=ctf_team1] run function ctf:game/bomb/take/msg/display with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:game/bomb/take/msg/display with storage ctf:game team2