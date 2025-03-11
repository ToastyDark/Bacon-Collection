# Stop if player just respawned
execute if entity @s[tag=ctf_respawned] run return fail


# --------------- Flag ---------------
# Check if player captured flag
$execute if entity @s[tag=ctf_has_flag,team=ctf_team$(team_num),nbt={OnGround:true}] run function ctf:game/flag/capture/capture with storage ctf:game team$(team_num)

# Check if player is in op's spawn with flag
$execute if entity @s[tag=ctf_has_flag,team=ctf_team$(team_ops),nbt={OnGround:true}] run function ctf:game/spawn/wrong_spawn/add with storage ctf:game

# --------------- Bomb ---------------
# Player Delivers Bomb
$execute if entity @s[tag=ctf_has_bomb,team=ctf_team$(team_ops),nbt={OnGround:true}] run function ctf:game/bomb/deliver/deliver with storage ctf:game team$(team_num)

# Bomb Wrong Spawn
$execute if entity @s[tag=ctf_has_bomb,team=ctf_team$(team_num),nbt={OnGround:true}] run function ctf:game/spawn/wrong_spawn/add with storage ctf:game