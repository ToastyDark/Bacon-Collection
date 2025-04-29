# Add 1 to counter and store to team data
#scoreboard players add bombsites_placed value 1
#$execute store result storage ctf:game team$(team_num).bombsites_placed int 1 run scoreboard players get bombsites_placed value

# Place bomb sites depending on how many are set for said map
$execute in $(dimension) run function ctf:game/_bomb/site/place/place with storage ctf:game team$(team_num).bsite.1
$execute in $(dimension) run function ctf:game/_bomb/site/place/place with storage ctf:game team$(team_num).bsite.2
$execute in $(dimension) run function ctf:game/_bomb/site/place/place with storage ctf:game team$(team_num).bsite.3


# Loop if haven't placed all bombsites
#execute store result score bombsites_max value run data get storage ctf:game bsite_count
#$execute unless score bombsites_placed value >= bombsites_max value run return run function ctf:game/_bomb/site/place/all with storage ctf:game team$(team_num)