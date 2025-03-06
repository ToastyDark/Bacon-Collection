data modify storage transportu:temp temp_x set from entity @s Pos[0]
data modify storage transportu:temp temp_y set from entity @s Pos[1]
data modify storage transportu:temp temp_z set from entity @s Pos[2]

particle minecraft:firework ~ ~2 ~ 0 1 0 .1 10

data merge storage transportu:temp {color:"color:[1, 1, 1]"}
data merge storage transportu:temp {potion_color:"16579836"}

data merge storage transportu:temp {world:"minecraft:minigames"}
data merge storage transportu:temp {world_lore:"Minigames"}
data merge storage transportu:temp {destination:"unknown"}
data merge storage transportu:temp {destination_lore:"Unknown"}

data merge storage transportu:temp {temp_rx:"0"}
data merge storage transportu:temp {temp_rz:"0"}


function transportu:makedirect with storage transportu:temp