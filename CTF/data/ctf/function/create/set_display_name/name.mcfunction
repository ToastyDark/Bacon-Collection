execute store result score %temp temp run scoreboard players get @s id
$function ctf:create/set_display_name/prep { "name": "$(name)", "color": "$(color)" }

function ctf:edit/map/display_name with storage ctf:temp map_create_data.player.$(player_id)