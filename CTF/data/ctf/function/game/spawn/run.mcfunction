# Check if player has flag
execute if entity @s[tag=ctf_respawned] run return fail

# Check if player has flag
$execute if entity @s[tag=ctf_has_flag,team=ctf_team$(team_num)] run function ctf:game/flag/capture with storage ctf:game team$(team_num)
