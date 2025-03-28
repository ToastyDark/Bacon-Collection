# Reset Player
function ctf:player/respawn/reset


# Add Respawned Tag
function ctf:player/respawn/add_tag

# TP
execute if entity @s[team=ctf_team1] run function ctf:setup/spawn/tp with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:setup/spawn/tp with storage ctf:game team2
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.2 1.8 0.1

# Kit Swap Cooldown
scoreboard players set @s ctf_kit_swap_cd 1

# Get Kit
function ctf:player/kit/update with storage ctf:game