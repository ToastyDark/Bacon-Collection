# Set Temp Team Data
function ctf:game/flag/set_temp_team

$execute as @a[team=ctf_team$(team_raid)] at @s run function ctf:game/flag/return/msg/raid
$execute as @a[team=ctf_team$(team_chase)] at @s run function ctf:game/flag/return/msg/chase