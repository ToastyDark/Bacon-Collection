data modify storage transportu:temp temp_x set from entity @s Pos[0]
data modify storage transportu:temp temp_y set from entity @s Pos[1]
data modify storage transportu:temp temp_z set from entity @s Pos[2]

particle minecraft:firework ~ ~2 ~ 0 1 0 .1 1000

data merge storage transportu:temp {color:"[0.98, 0.93, 0.68]"}
data merge storage transportu:temp {potion_color:"16770973"}

data merge storage transportu:temp {world:"minecraft:void"}
data merge storage transportu:temp {world_lore:"The Void"}
data merge storage transportu:temp {destination:"unknown"}
data merge storage transportu:temp {destination_lore:"Unknown"}

data merge storage transportu:temp {temp_rx:"0"}
data merge storage transportu:temp {temp_rz:"0"}


function transportu:makedirect with storage transportu:temp