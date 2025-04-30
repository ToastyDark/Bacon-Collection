
execute if score @s ctf.item.automatic_crossbow matches ..200 run return 0

execute if items entity @s hotbar.0 minecraft:crossbow run item replace entity @s hotbar.0 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.1 minecraft:crossbow run item replace entity @s hotbar.1 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.2 minecraft:crossbow run item replace entity @s hotbar.2 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.3 minecraft:crossbow run item replace entity @s hotbar.3 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.4 minecraft:crossbow run item replace entity @s hotbar.4 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.5 minecraft:crossbow run item replace entity @s hotbar.5 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.6 minecraft:crossbow run item replace entity @s hotbar.6 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.7 minecraft:crossbow run item replace entity @s hotbar.7 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if items entity @s hotbar.8 minecraft:crossbow run item replace entity @s hotbar.8 with minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]]

scoreboard players set @s ctf.item.automatic_crossbow 0