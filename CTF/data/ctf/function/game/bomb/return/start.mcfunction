# Replace Bomb
function ctf:game/bomb/place/place with storage ctf:game bomb

# Set bomb as returned
data modify storage ctf:game bomb.stolen set value false

# Return Message
$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/bomb/return/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/bomb/return/msg/ops