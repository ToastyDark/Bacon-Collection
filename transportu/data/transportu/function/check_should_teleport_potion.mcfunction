# Executes as the player to check

# Store current potion info
execute if items entity @s weapon.mainhand minecraft:potion run data modify storage transportu:temp_potion_info info set from entity @s SelectedItem.components.minecraft:custom_data
execute if items entity @s weapon.offhand minecraft:potion run data modify storage transportu:temp_potion_info info set from entity @s Inventory[-1].components.minecraft:custom_data

# Teleport if you should teleport with a potion
execute as @s[scores={POTTracker=1}] at @s run function transportu:teleport with storage transportu:temp_potion_info info


# Store current carrot info
execute if items entity @s weapon.mainhand minecraft:golden_carrot run data modify storage transportu:temp_carrot_info info set from entity @s SelectedItem
execute if items entity @s weapon.offhand minecraft:golden_carrot run data modify storage transportu:temp_carrot_info info set from entity @s Inventory[-1]

# Teleport if you should teleport with a carrot
execute as @s[scores={CARRtracker=1}] at @s if data storage transportu:temp_carrot_info info.components.minecraft:enchantment_glint_override run function transportu:teleport_void_clone