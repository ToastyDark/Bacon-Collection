# Check if player leaves queue
execute if data storage ctf:game {started:false} as @a if entity @s[scores={ctf_crouch_time=1..}] run function ctf:lobby/queue/leave/crouch_check


# Update Map Names
function ctf:lobby/display/map/update_display_name with storage ctf:game
function ctf:lobby/music/int/main


# Update if in lobby to true
execute if data storage ctf:game {started:false} unless score $ctf_in_lobby value matches 1 run function ctf:lobby/set_in_lobby/true
# Update if in lobby to false
execute if data storage ctf:game {started:true} unless score $ctf_in_lobby value matches 0 run function ctf:lobby/set_in_lobby/false