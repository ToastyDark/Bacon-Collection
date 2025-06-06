# Replace Flag
$function ctf:game/flag/place/team$(team_ops) with storage ctf:game

# Set Temp Team Data
function ctf:game/flag/set_temp_team

# Set flag as returned
$data modify storage ctf:game team$(team_ops).flag_stolen set value false

$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/flag/return/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/flag/return/msg/ops