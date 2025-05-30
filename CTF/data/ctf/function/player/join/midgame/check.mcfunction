# Join Team 1
execute in void align xyz positioned 24 78 -124 if entity @s[dx=6,dz=6,dy=7] at @s run function ctf:player/join/midgame/timer with storage ctf:game team1


# Join Team 2
execute in void align xyz positioned 46 78 -124 if entity @s[dx=6,dz=6,dy=7] at @s run function ctf:player/join/midgame/timer with storage ctf:game team2


# Join a Random Team
execute in void align xyz positioned 34 76 -133 if entity @s[dx=8,dz=8,dy=7] at @s run function ctf:player/join/midgame/random_team