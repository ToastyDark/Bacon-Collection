$execute if entity @s[tag=ctf_respawned,scores={ctf_crouch_time=1}] run function ctf:map/$(map)/kit/swap with storage ctf:game

# Play Swap Sound
execute at @s run playsound minecraft:entity.armadillo.scute_drop