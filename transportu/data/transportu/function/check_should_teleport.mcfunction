# Executes as the player to check

# Copy persistent potion and carrot info into TEMP
$data modify storage transportu:temp_potion_info info set from storage transportu:persistent data.$(id).potion
$data modify storage transportu:temp_carrot_info info set from storage transportu:persistent data.$(id).carrot

# Remove teleport info if not holding a transportu potion
# TODO: Currently, any potion with any custom data acts like a transportu potion and doesn't clear info
execute if items entity @s weapon.* potion unless items entity @s weapon.* potion[minecraft:custom_data] run data modify storage transportu:temp_potion_info info set value {}

# --- Teleport with info stored in TEMP --- #

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

# Reset scores

# Reset the drinking counter
execute as @s[scores={POTTracker=1..}] run scoreboard players set @s POTTracker 0

# Reset the eating counter
execute as @s[scores={CARRtracker=1..}] run scoreboard players set @s CARRtracker 0

# --- Store info back into persistent from TEMP --- #
$data modify storage transportu:persistent data.$(id).potion set from storage transportu:temp_potion_info info
$data modify storage transportu:persistent data.$(id).carrot set from storage transportu:temp_carrot_info info