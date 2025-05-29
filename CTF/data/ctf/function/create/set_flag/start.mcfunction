# Stop if not on Ground
execute unless entity @s[nbt={OnGround:1b}] run return run title @s actionbar {"text":"Must be on ground for the this action","bold": true,"color": "red"}

# Stop if block isn't wool
execute unless block ~ ~ ~ #wool run return run title @s actionbar {"text":"Flag block must be wool","bold": true,"color": "red"}


# Set Flag Block
$data modify storage ctf:map $(map_id).team$(current_team).flag.x set from entity @s Pos[0]
$data modify storage ctf:map $(map_id).team$(current_team).flag.y set from entity @s Pos[1]
$data modify storage ctf:map $(map_id).team$(current_team).flag.z set from entity @s Pos[2]

# Set Y Level to block below player's feet
$execute store result score %temp temp run data get storage ctf:map $(map_id).team$(current_team).flag.y
scoreboard players remove %temp temp 1
$execute store result storage ctf:map $(map_id).team$(current_team).flag.y int 1 run scoreboard players get %temp temp


# Next Step
$function ctf:create/step/next_step with storage ctf:temp map_create_data.player.$(player_id)