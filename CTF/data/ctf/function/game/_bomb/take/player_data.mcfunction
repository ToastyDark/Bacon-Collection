# Set as has flag
tag @s add ctf_has_bomb

execute if entity @s[team=ctf_team1] run tag @s add ctf_has_bomb_team1
execute if entity @s[team=ctf_team2] run tag @s add ctf_has_bomb_team2

# Clear Inv
#clear @s
function invsave:clear {path:ctf_bomber}

# Bomb Inv
function ctf:player/obj/inv/bomb/start