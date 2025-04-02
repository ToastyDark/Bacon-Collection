# Check if player leaves queue
execute if data storage ctf:game {started:false} as @a if entity @s[scores={ctf_crouch_time=1..}] run function ctf:lobby/queue/leave/crouch_check


# Update Map Names
function ctf:lobby/display/map/update_display_name with storage ctf:game
function ctf:lobby/music/int/main


# Update if in lobby to true
execute if data storage ctf:game {started:false} unless score $ctf_in_lobby value matches 1 run function ctf:lobby/set_in_lobby/true
# Update if in lobby to false
execute if data storage ctf:game {started:true} unless score $ctf_in_lobby value matches 0 run function ctf:lobby/set_in_lobby/false


# Check if player is in lobby
execute in void positioned 22 58 -135 as @a[tag=!ctf_lobby,dx=38,dy=38,dz=38] run tag @s add ctf_lobby
execute in void positioned 22 58 -135 as @a unless entity @s[tag=ctf_lobby,dx=38,dy=38,dz=38] run tag @s remove ctf_lobby

# Play Music for players in lobby
execute as @a[tag=ctf_lobby,tag=!museq.ctf_note_lobby.mmp,scores={ctf_music=2}] run tag @s add museq.ctf_note_lobby.mmp