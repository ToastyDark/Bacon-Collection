$execute positioned $(flag_x) $(flag_y) $(flag_z) if entity @s[distance=..7] run return run function ctf:game/flag/steal/steal_own with storage ctf:game team$(team_num)

# Stop if player has bomb
execute if entity @s[tag=ctf_has_bomb] run return run function ctf:game/msg/already_has_objective

# Check if flag was actually broken
$function ctf:game/flag/steal/check_block_gone with storage ctf:game team$(team_ops)