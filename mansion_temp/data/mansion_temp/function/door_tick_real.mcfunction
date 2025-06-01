# Summon block displays
execute unless entity @e[type=block_display,tag=door_bottom,distance=..1] run summon block_display ~-0.5 ~ ~-0.5 {Tags:[deletable,door_bottom], interpolation_duration:10,block_state:{"Name":"iron_door"}}
execute unless entity @e[type=block_display,tag=door_top,distance=..1] run summon block_display ~-0.5 ~ ~-0.5 {Tags:[deletable,door_top], interpolation_duration:10,block_state:{"Name":"iron_door"}}

# Summon interaction
execute unless entity @e[type=interaction,tag=door_interaction,distance=..1] run summon interaction ~ ~ ~ {Tags:[deletable,door_interaction], width:1.4, height:2}

# Opening detection
execute unless entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] on target if items entity @s weapon.* minecraft:tripwire_hook run tag @s add was_holding_tripwire_hook
execute unless entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] on attacker if items entity @s weapon.* minecraft:tripwire_hook run tag @s add was_holding_tripwire_hook
# Actually open door
execute as @a[tag=was_holding_tripwire_hook] run playsound minecraft:block.iron_door.open master @s ~ ~ ~
execute as @a[tag=was_holding_tripwire_hook] run clear @s tripwire_hook 1
execute as @a[tag=was_holding_tripwire_hook] as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_open
tag @a remove was_holding_tripwire_hook
# Actionbar Text (opening)
execute unless entity @s[tag=open] as @a[distance=..3] unless items entity @s weapon.* minecraft:tripwire_hook run title @s actionbar {"text":"You need a key to open this door."}
execute unless entity @s[tag=open] as @a[distance=..3] if items entity @s weapon.* minecraft:tripwire_hook run title @s actionbar {"text":"Right click door to open."}
execute if entity @s[tag=open] as @a[distance=..3] run title @s actionbar {"text":"The door is open."}

# Closing detection (only used for development)
execute if entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] on target if items entity @s weapon.* minecraft:mace run tag @s add was_holding_mace
execute if entity @s[tag=open] as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] on attacker if items entity @s weapon.* minecraft:mace run tag @s add was_holding_mace
# Actually close door (only used for development)
execute as @a[tag=was_holding_mace] run playsound minecraft:block.iron_door.close master @s ~ ~ ~
execute as @a[tag=was_holding_mace] as @e[type=minecraft:marker,distance=..2] run function mansion_temp:door_close
tag @a remove was_holding_mace
# Actionbar Text (closing)
execute if entity @s[tag=open] as @a[distance=..3] if items entity @s weapon.* minecraft:mace run title @s actionbar {"text":"Right click door to close.", "color":"red"}


execute as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=door_interaction,distance=..1] run data remove entity @s attack