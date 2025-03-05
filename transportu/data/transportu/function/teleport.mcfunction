# Teleports a player to a location. Example parameters: {location:"-879.14 152.00 1971.76", color:"color:[1.0,0.24,0.67]"}

$particle dust{$(color),scale:1} ~ ~1 ~ 0.5 0.75 0.5 1 100 normal
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 0.5
$teleport @s $(location) 0 0
playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.5
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 0.5
$particle dust{$(color),scale:1} ~ ~1 ~ 0.5 0.75 0.5 1 100 normal