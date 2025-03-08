# Check Player Meets Req
execute unless entity @s[tag=ctf_respawned,scores={ctf_crouch_time=1}] run return fail

# Desert
$execute if data storage ctf:game {map:desert} in clone positioned 64 -63 81 run function ctf:player/kit/swap/swap with storage ctf:game team$(team_num)