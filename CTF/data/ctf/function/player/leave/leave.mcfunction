# Remove From Game
scoreboard players remove $ctf_player_count value 1
execute if entity @s[team=ctf_team1] run scoreboard players remove $ctf_team1_count value 1
execute if entity @s[team=ctf_team2] run scoreboard players remove $ctf_team2_count value 1

# Restore Inventory
function invsave:restore


# Reset Players
function ctf:player/reset
function ctf:player/respawn/reset

# Tp
execute in void run tp @s -1 64 -110