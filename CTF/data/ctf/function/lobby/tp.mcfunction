execute in void run tp @s 38 79 -103 -180 10
execute in void run spawnpoint @s 38 79 -103 -180.10


# Playsound
execute unless entity @s[tag=ctf_lobby_save] at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.6 1.2 0.6
execute unless entity @s[tag=ctf_lobby_save] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 0.8 0.2
# To Others
execute unless entity @s[tag=ctf_lobby_save] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 0.7 0.2

tag @s remove ctf_lobby_save
execute if entity @s[gamemode=spectator] run gamemode adventure @s

#scoreboard players set @s actionbar_cd 1
#title @s actionbar {"text":"Warped to CTF","bold":true,"color":"dark_aqua"}a