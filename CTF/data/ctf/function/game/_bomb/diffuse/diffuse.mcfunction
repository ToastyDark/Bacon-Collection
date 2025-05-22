# Replace Bomb
function ctf:game/_bomb/place/timer/start with storage ctf:game

# Set bomb as returned
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0
data modify storage ctf:game bomb_planted set value false

# Return Message
$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/_bomb/diffuse/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/_bomb/diffuse/msg/ops

# ---------- Reset Bombsite ----------
$execute as @n[type=armadillo, tag=ctf_bombsite ] at @s run function ctf:game/_bomb/site/reset with storage ctf:game team$(team_num)