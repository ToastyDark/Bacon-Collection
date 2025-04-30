scoreboard players add @s ctf.item.automatic_crossbow 1

execute if score @s ctf.item.crossbow_used matches 1.. run scoreboard players set @s ctf.item.automatic_crossbow 0
execute if score @s ctf.item.crossbow_used matches 1.. run scoreboard players set @s ctf.item.crossbow_used 0