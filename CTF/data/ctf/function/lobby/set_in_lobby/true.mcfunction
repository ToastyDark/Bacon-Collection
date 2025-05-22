# Set True
scoreboard players set $ctf_in_lobby value 1

# Remove Portal
execute in void run forceload add 29 -117 48 -98
schedule function ctf:lobby/set_in_lobby/portal/remove 2t replace