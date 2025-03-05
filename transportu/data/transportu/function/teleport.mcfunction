# Teleports a player to a location. Example parameters: {location:"-879 152 1971 0 0", color:"color:[1.0,0.24,0.67]", world:"minecraft:minigames"}

$execute in $(world) run particle dust{$(color),scale:1} ~ ~1 ~ 0.5 0.75 0.5 1 100 normal
$execute in $(world) run playsound minecraft:entity.player.teleport player @a ~ ~ ~ 0.5
$execute in $(world) run teleport @s $(location)
$execute in $(world) run execute at @s run playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.5
$execute in $(world) run execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~ 0.5
$execute in $(world) run execute at @s run particle dust{$(color),scale:1} ~ ~1 ~ 0.5 0.75 0.5 1 100 normal