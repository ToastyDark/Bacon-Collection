execute if data entity @e[type=minecraft:interaction, tag=hello, limit=1] interaction run scoreboard players add @p test 1
kill @e[tag=hello,type=interaction]
summon minecraft:interaction ~ ~2 ~ {Tags:[hello]}
execute as @e[tag=hello,type=minecraft:interaction] run data remove entity @s interaction