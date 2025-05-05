scoreboard players reset @s ctf.item.camel_egg_used

# Assign ID to Camel
execute at @s as @n[type=camel,tag=ctf.camel_pet.new] run scoreboard players operation @s id = @p id
tag @s remove ctf.camel_pet.new