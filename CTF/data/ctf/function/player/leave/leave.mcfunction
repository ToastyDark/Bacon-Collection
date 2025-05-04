# Remove From Game
scoreboard players remove $ctf_player_count value 1
execute if entity @s[team=ctf_team1] run scoreboard players remove $ctf_team1_count value 1
execute if entity @s[team=ctf_team2] run scoreboard players remove $ctf_team2_count value 1

# Stop Music
function museq:meta/stopall

# Restore Inventory
function invsave:restore {"path":"main"}


# Reset Players
function ctf:player/reset
function ctf:player/respawn/reset

# Tp
function ctf:lobby/tp