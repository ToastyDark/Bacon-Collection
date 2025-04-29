# Bring start counter down to 0 to place all bombs
scoreboard players set bombsites_placed value 0
# Place Bombsites for Team 1
function ctf:game/_bomb/site/place/all with storage ctf:game team1


# Place Bomb Sites for Team 2
scoreboard players set bombsites_placed value 0
function ctf:game/_bomb/site/place/all with storage ctf:game team2