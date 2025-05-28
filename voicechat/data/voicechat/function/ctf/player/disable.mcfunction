title @s actionbar {"text":"Communications Disabled","bold": true,"color": "red"}
function voicechat:ctf/leave/leave

# Start comms change cooldown
scoreboard players add @s ctf_comms_change_cd 1

# Sound
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1