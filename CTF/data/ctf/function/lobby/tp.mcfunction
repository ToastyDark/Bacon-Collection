execute in void run tp @s 38 79 -103 -180 10
execute in void run spawnpoint @s 38 79 -103 -180.10


# Stop sound if player was already in lobby
execute if entity @s[tag=ctf_lobby] run return fail

# Playsound
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.6 1.2 0.6
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 0.8 0.2
# To Others
execute at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 0.7 0.2

#scoreboard players set @s actionbar_cd 1
#title @s actionbar {"text":"Warped to CTF","bold":true,"color":"dark_aqua"}a