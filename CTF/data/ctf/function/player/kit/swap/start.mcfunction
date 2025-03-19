# Check Player Meets Req
execute unless entity @s[tag=ctf_respawned] run return fail

# Swap kit for chosen kit data
$function ctf:player/kit/swap/get_num with storage ctf:game team$(team_num)