# Set Scores
scoreboard players set ctf_team1 ctf_points 0
scoreboard players set ctf_team2 ctf_points 0

# Set Display
#scoreboard objectives modify ctf_points displayname {"text":"CTF Points","color":"gold","bold":true}
scoreboard objectives modify ctf_points displayname {"text":"Points","color":"gold","bold":true}
scoreboard objectives modify ctf_points numberformat styled {"color":"gray"}

# Set Name Displays
function ctf:setup/scoreboard/team_colors with storage ctf:game team1
function ctf:setup/scoreboard/team_colors with storage ctf:game team2

# Show Scoreboard
scoreboard objectives setdisplay sidebar ctf_points