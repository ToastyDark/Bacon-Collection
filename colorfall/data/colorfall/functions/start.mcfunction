# generate er (need to run before spreadplayers otherwise you suffocate)
function colorfall:generate

# ??? (copied from the original colorfall
team add colorfall
team modify colorfall friendlyFire false
tp @a[x=-1080,y=122,z=999,dx=-0.7,dy=3,dz=2] -1070 119 1000
execute as @a[x=-1061,y=119,z=1009,dx=-18,dy=1,dz=-18] run team join colorfall
tellraw @a[team=colorfall] "beans"
spreadplayers -1070 1000 1 8 under 121 false @a[team=colorfall]

# initialize
scoreboard players set ?in_game cf_data 1
function colorfall:initialize_player_ids