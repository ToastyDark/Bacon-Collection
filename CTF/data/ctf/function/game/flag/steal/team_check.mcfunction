$execute positioned $(flag_x) $(flag_y) $(flag_z) if entity @s[distance=..7] run return run function ctf:game/flag/steal/steal_own with storage ctf:game team$(team_num)

function ctf:game/flag/steal/steal