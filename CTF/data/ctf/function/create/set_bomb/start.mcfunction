# Stop if not on Ground
execute unless entity @s[nbt={OnGround:1b}] run return run title @s actionbar {"text":"Must be on ground for the this action","bold": true,"color": "red"}

# Stop if block isn't tnt
execute unless block ~ ~ ~ tnt run return run title @s actionbar {"text":"Bomb block must be TNT","bold": true,"color": "red"}


# Set Bomb Block
$execute store result storage ctf:map $(map_id).bomb.x int 1 run data get entity @s Pos[0] 1
$execute store result storage ctf:map $(map_id).bomb.y int 1 run data get entity @s Pos[1] 1
$execute store result storage ctf:map $(map_id).bomb.z int 1 run data get entity @s Pos[2] 1

# Set Y Level to block below player's feet
$execute store result score %temp temp run data get storage ctf:map $(map_id).bomb.y
scoreboard players remove %temp temp 1
$execute store result storage ctf:map $(map_id).bomb.y int 1 run scoreboard players get %temp temp


# Next Step
$function ctf:create/step/next_step with storage ctf:temp map_create_data.player.$(player_id)