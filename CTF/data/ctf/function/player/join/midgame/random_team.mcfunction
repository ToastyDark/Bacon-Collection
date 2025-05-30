# Find lowest player
execute unless entity @s[scores={ctf_join_time=1..}] run function ctf:setup/random_teams/find_lowest_players

# Timer
function ctf:player/join/midgame/random_team_2 with storage ctf:game