# Remove Item on Ground
execute at @s run kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:tnt"}}]

# Place Bomb
function ctf:game/_bomb/place/place with storage ctf:game