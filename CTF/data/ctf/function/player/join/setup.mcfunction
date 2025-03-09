# Set Game ID
scoreboard players operation @s ctf_session = $ctf_session value

#Set as Respawn
function ctf:player/respawn/add_tag


# Set to 1st Kit
function invsave:clear
scoreboard players set @s ctf_kit 0
function ctf:player/kit/update with storage ctf:game