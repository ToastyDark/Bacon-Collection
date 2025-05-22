# Set True
scoreboard players set $ctf_in_lobby value 0

# Place Portal
execute in void run forceload add 29 -117 48 -98
schedule function ctf:lobby/set_in_lobby/portal/place 2t replace