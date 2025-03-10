# Check Player Meets Req
execute unless entity @s[tag=ctf_respawned] run return fail

# Desert
$execute if data storage ctf:game {map:desert_maze} in clone positioned 64 -63 81 run function ctf:player/kit/swap/get_num with storage ctf:game team$(team_num)