#
execute at @s run function ctf:spectate/start/tp with storage ctf:game spectator

# Play Sound
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 2 1.4 1
playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0.5 1