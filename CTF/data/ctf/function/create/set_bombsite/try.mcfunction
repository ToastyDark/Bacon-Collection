# Check how many bombsites are placed
$execute store result score %temp temp run data get storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites

# Move to next step if all bombsites are placed
$execute if score %temp temp matches $(bombsite_count).. run return run function ctf:create/step/next_step with storage ctf:temp map_create_data.player.$(player_id)



# If not all bombsites are placed, continue trying to place
# Add +1 to temp score and store as next bombsite to place
scoreboard players add %temp temp 1
$execute store result storage ctf:temp map_create_data.player.$(player_id).bombsite_num int 1 run scoreboard players get %temp temp



# Check for click and try placing bombsite
$execute if entity @s[scores={rclick=1..}] if items entity @s weapon.mainhand minecraft:ghast_tear[minecraft:custom_data={ctf_creator:1b}] run function ctf:create/set_bombsite/start with storage ctf:temp map_create_data.player.$(player_id)