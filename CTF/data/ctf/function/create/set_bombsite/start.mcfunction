# Stop if not on Ground
execute unless entity @s[nbt={OnGround:1b}] run return run title @s actionbar {"text":"Must be on ground for the this action","bold": true,"color": "red"}


# Set Bombsite Position
$execute store result storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_x int 1 run data get entity @s Pos[0] 1
$execute store result storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_y int 1 run data get entity @s Pos[1] 1
$execute store result storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_z int 1 run data get entity @s Pos[2] 1

# Set Bombsite Rotation
# X
execute store result score %rotation temp run data get entity @s Rotation[0] 1

$execute if score %rotation temp matches -180..-169 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -180
$execute if score %rotation temp matches -168..-147 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -158
$execute if score %rotation temp matches -146..-124 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -135
$execute if score %rotation temp matches -123..-102 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -113
$execute if score %rotation temp matches -101..-79 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -90
$execute if score %rotation temp matches -78..-57 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -68
$execute if score %rotation temp matches -56..-34 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -45
$execute if score %rotation temp matches -33..-12 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value -23
$execute if score %rotation temp matches -11..11 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 0
$execute if score %rotation temp matches 12..33 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 23
$execute if score %rotation temp matches 34..56 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 45
$execute if score %rotation temp matches 57..78 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 68
$execute if score %rotation temp matches 79..101 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 90
$execute if score %rotation temp matches 102..123 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 113
$execute if score %rotation temp matches 124..146 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 135
$execute if score %rotation temp matches 147..168 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 158
$execute if score %rotation temp matches 169..180 run data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_rx set value 180

# Y
$data modify storage ctf:map $(map_id).team$(current_team).bsite_$(bombsite_num)_ry set value 0



# Remove 1 from Bombsites to be placed
$execute store result score %temp temp run data get storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place
scoreboard players remove %temp temp 1
$execute store result storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place int 1 run scoreboard players get %temp temp

# Add 1 to Bombsites placed
$execute store result score %temp temp run data get storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_placed
scoreboard players add %temp temp 1
$execute store result storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_placed int 1 run scoreboard players get %temp temp


# Success Message
$title @s actionbar ["",{"text":"Placed Bombsite ","bold":true,"color":"green"},{"nbt":"map_create_data.player.$(player_id).team$(current_team)_bombsites_placed","storage":"ctf:temp","bold":true}]
$tellraw @s ["",{"text":"There are ","color":"gray"},{"nbt":"map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place","storage":"ctf:temp","bold":true,"color":"dark_aqua"},{"text":" left to place","color":"gray"}]
execute at @s run playsound entity.item.pickup master @s ~ ~ ~ 0.4 1.6