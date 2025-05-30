execute unless entity @e[type=block_display,tag=door_bottom,distance=..1] run summon block_display ~ ~ ~ {Tags:[deletable,door_bottom], interpolation_duration:10,block_state:{"Name":"iron_door"}}
execute unless entity @e[type=block_display,tag=door_top,distance=..1] run summon block_display ~ ~ ~ {Tags:[deletable,door_top], interpolation_duration:10,block_state:{"Name":"iron_door"}}


execute unless entity @e[type=interaction,tag=door_interaction,distance=..1] run summon interaction ~ ~ ~ {Tags:[deletable,door_interaction], width:1, height:2}

execute unless entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction] on target if items entity @s weapon.* minecraft:tripwire_hook as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_open
execute unless entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction] on attacker if items entity @s weapon.* minecraft:tripwire_hook as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_open

execute unless entity @s[tag=open] as @a[distance=..3] unless items entity @s weapon.* minecraft:tripwire_hook run title @s actionbar {"text":"You need a key to open this elevator."}
execute unless entity @s[tag=open] as @a[distance=..3] if items entity @s weapon.* minecraft:tripwire_hook run title @s actionbar {"text":"Right click door to open elevator."}

execute if entity @s[tag=open] as @a[distance=..3] run title @s actionbar {"text":"The door is open."}

execute as @e[type=minecraft:interaction,tag=door_interaction] run data remove entity @s interaction