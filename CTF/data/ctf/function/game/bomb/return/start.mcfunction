# Replace Bomb
function ctf:game/bomb/place/timer/start with storage ctf:game

# Set bomb as returned
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0

# Return Message
$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/bomb/return/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/bomb/return/msg/ops