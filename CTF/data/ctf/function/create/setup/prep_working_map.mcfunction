# Get the player's ID to use in the process
$function ctf:create/setup/get_working_data {"map_id":"$(map_id)", "bombsite_count": "$(bombsites)", "current_team":$(current_team)}

# Set the players working map with storage
function ctf:create/setup/set_working_map with storage ctf:temp map_create_data.temp