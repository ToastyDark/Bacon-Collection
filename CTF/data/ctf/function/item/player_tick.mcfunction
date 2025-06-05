# Function for all item checks related to the player (to search for players once)

# Resistance Armor (cactus kit)
#execute if items entity @s armor.* *[minecraft:custom_data={ctf_resistance_armor:true}] at @s run function ctf:item/resistance_armor/tick

# Slow Shears (cactus kit)
execute if items entity @s weapon.mainhand *[minecraft:custom_data={ctf_slow_shears:true}] at @s run function ctf:item/slow_shears/tick
execute if items entity @s weapon.offhand *[minecraft:custom_data={ctf_slow_shears:true}] at @s run function ctf:item/slow_shears/tick

# Automatic crossbow
execute if items entity @s hotbar.* *[minecraft:custom_data={ctf_automatic_crossbow:true}] run function ctf:item/automatic_crossbow/tick

# Camel Spawn Egg
execute if entity @s[scores={ctf.item.camel_egg_used=1..}] run function ctf:item/camel_pet/egg_used