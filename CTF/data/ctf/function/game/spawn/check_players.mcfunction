# Check if player within spawn
$execute at @s positioned $(spawn_x) $(spawn_y) $(spawn_z) align xyz positioned ~-1 ~ ~-1 if entity @s[dx=3,dy=3,dz=3] run function ctf:game/spawn/run with storage ctf:game team$(team_num)

# Check if player is in ops spawn