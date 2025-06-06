#
execute at @s run function ctf:lobby/spectate/start/tp with storage ctf:game spectator

# Play Sound
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 1.4 0.5
playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 0.5 0.5 0.5