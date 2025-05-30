execute unless entity @e[type=block_display,tag=door_bottom,distance=..1] run summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:[deletable,door_bottom], interpolation_duration:10,block_state:{"Name":"iron_door"}}
execute unless entity @e[type=block_display,tag=door_top,distance=..1] run summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:[deletable,door_top], interpolation_duration:10,block_state:{"Name":"iron_door"}}


execute unless entity @e[type=interaction,tag=door_interaction,distance=..1] run summon interaction ~ ~ ~ {Tags:[deletable,door_interaction], width:1, height:2}

execute as @e[type=minecraft:interaction,tag=door_interaction] on target if items entity @s weapon.mainhand minecraft:tripwire_hook as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_open
execute as @e[type=minecraft:interaction,tag=door_interaction] on target if items entity @s weapon.offhand minecraft:tripwire_hook as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_open