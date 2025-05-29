# Stop if not on Ground
execute unless entity @s[nbt={OnGround:1b}] run return run title @s actionbar {"text":"Must be on ground for the this action","bold": true,"color": "red"}



# --------- Set Spawn Positions --------
$execute store result storage ctf:map $(map_id).team$(current_team).spawn.x int 1 run data get entity @s Pos[0] 1
$execute store result storage ctf:map $(map_id).team$(current_team).spawn.y int 1 run data get entity @s Pos[1] 1
$execute store result storage ctf:map $(map_id).team$(current_team).spawn.z int 1 run data get entity @s Pos[2] 1

# --------- Rotation Calculation --------
# X
execute store result score %rotation temp run data get entity @s Rotation[0] 1

$execute if score %rotation temp matches -180..-169 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -180
$execute if score %rotation temp matches -168..-147 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -158
$execute if score %rotation temp matches -146..-124 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -135
$execute if score %rotation temp matches -123..-102 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -113
$execute if score %rotation temp matches -101..-79 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -90
$execute if score %rotation temp matches -78..-57 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -68
$execute if score %rotation temp matches -56..-34 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -45
$execute if score %rotation temp matches -33..-12 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value -23
$execute if score %rotation temp matches -11..11 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 0
$execute if score %rotation temp matches 12..33 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 23
$execute if score %rotation temp matches 34..56 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 45
$execute if score %rotation temp matches 57..78 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 68
$execute if score %rotation temp matches 79..101 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 90
$execute if score %rotation temp matches 102..123 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 113
$execute if score %rotation temp matches 124..146 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 135
$execute if score %rotation temp matches 147..168 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 158
$execute if score %rotation temp matches 169..180 run data modify storage ctf:map $(map_id).team$(current_team).spawn.rx set value 180

# Y
$data modify storage ctf:map $(map_id).team$(current_team).spawn.ry set value 0


# Confirmation Message
title @s actionbar {"text":"Spawnpoint Set","bold": true,"color": "green"}


# Next Step
$function ctf:create/step/next_step with storage ctf:temp map_create_data.player.$(player_id)