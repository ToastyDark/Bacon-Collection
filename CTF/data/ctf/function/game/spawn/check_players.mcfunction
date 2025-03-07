# Check if player within spawn
$execute at @s positioned $(spawn_x) $(spawn_y) $(spawn_z) align xyz positioned ~-1 ~ ~-1 if entity @s[dx=3,dy=3,dz=3] run function ctf:game/spawn/run with storage ctf:game

#$execute at @s positioned $(x) $(y) $(z) align xz positioned ~-1 ~-1 ~-1 unless entity @s[dx=2,dy=3,dz=2] run function ctf:player/respawn/remove_tag