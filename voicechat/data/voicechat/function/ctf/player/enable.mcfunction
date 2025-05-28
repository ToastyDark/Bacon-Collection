title @s actionbar {"text":"Communications Enabled","bold": true,"color": "green"}
tag @s add ctf_vc

# Start comms change cooldown
scoreboard players add @s ctf_comms_change_cd 1

# Sound
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 2 1