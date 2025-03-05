# Reset Trigger
scoreboard players reset @s ctf.settings.random_teams

# Toggle
execute if data storage ctf:settings {random_teams:true} run return run function ctf:trigger/random_teams/false
function ctf:trigger/random_teams/true