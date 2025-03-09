# Executes as the player to check

# Store current potion info
execute if items entity @s weapon.mainhand minecraft:potion run data modify storage transportu:temp_potion_info info set from entity @s SelectedItem.components.minecraft:custom_data
execute if items entity @s weapon.offhand minecraft:potion run data modify storage transportu:temp_potion_info info set from entity @s Inventory[-1].components.minecraft:custom_data

execute as @a[scores={POTTracker=1}] at @s run function transportu:teleport with storage transportu:temp_potion_info info