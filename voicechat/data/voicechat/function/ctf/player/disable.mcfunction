title @s actionbar {"text":"Communications Disabled","bold": true,"color": "red"}
execute at @s run playsound minecraft:entity.guardian.attack master @s ~ ~ ~ 3 1.7 1
function voicechat:ctf/leave/leave

# Start comms change cooldown
scoreboard players add @s ctf_comms_change_cd 1