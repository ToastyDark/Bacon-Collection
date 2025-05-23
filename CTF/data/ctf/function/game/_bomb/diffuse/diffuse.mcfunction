# Playsound
execute at @n[type=armadillo, tag=ctf_bombsite ] run playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 1.5 1

# Replace Bomb
function ctf:game/_bomb/place/timer/start with storage ctf:game

# Kill Timer Display
kill @e[type=text_display,tag=ctf_bombsite_timer]


# Set bomb as returned
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0
data modify storage ctf:game bomb_planted set value false

# Return Message
$execute as @a[team=ctf_team$(team_num)] at @s run function ctf:game/_bomb/diffuse/msg/team
$execute as @a[team=ctf_team$(team_ops)] at @s run function ctf:game/_bomb/diffuse/msg/ops

# Reset Time on Player and Bombsite
scoreboard players reset @n[type=armadillo, tag=ctf_bombsite ] ctf_bombsite_click
scoreboard players reset @a[distance=..6,scores={ctf_bombsite_click=40..}] ctf_bombsite_click


# ---------- Reset Bombsite ----------
$execute as @n[type=armadillo, tag=ctf_bombsite ] at @s run function ctf:game/_bomb/site/reset with storage ctf:game team$(team_num)