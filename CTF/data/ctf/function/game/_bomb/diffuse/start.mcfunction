# Replace Bomb
function ctf:game/_bomb/place/timer/start with storage ctf:game

# Set bomb as returned
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0

# Return Message
$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/_bomb/diffuse/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/_bomb/diffuse/msg/ops