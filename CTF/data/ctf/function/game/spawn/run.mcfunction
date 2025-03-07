# Check if player has flag
execute if entity @s[tag=ctf_respawned] run return fail

# Check if player captured falg
$execute if entity @s[tag=ctf_has_flag,team=ctf_team$(team_num),nbt={OnGround:true}] run function ctf:game/flag/capture with storage ctf:game team$(team_num)

# Check if player is in op's spawn with flag
$execute if entity @s[tag=ctf_has_flag,team=ctf_team$(team_ops),nbt={OnGround:true}] run function ctf:game/spawn/wrong_spawn/add with storage ctf:game