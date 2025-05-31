# Check how many bombsites are placed
$execute store result score %temp temp run data get storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place


# If not all bombsites are placed, continue trying to place
# Add +1 to temp score and store as next bombsite to place

#scoreboard players remove %temp temp 1
$execute store result storage ctf:temp map_create_data.player.$(player_id).bombsite_num int 1 run scoreboard players get %temp temp



# Check for click and try placing bombsite
$execute in $(dimension) if entity @s[scores={ctf_create_click=1}] if items entity @s weapon.mainhand minecraft:ghast_tear[minecraft:custom_data={ctf_creator:1b}] run function ctf:create/set_bombsite/start with storage ctf:temp map_create_data.player.$(player_id)



# Move to next step if all bombsites are placed
$execute store result score %temp temp run data get storage ctf:temp map_create_data.player.$(player_id).team$(current_team)_bombsites_to_place
$execute if score %temp temp matches ..0 run return run function ctf:create/step/next_step with storage ctf:temp map_create_data.player.$(player_id)