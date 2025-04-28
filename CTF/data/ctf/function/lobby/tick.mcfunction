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
execute in void positioned 22 58 -135 as @a[tag=!ctf_lobby,dx=38,dy=38,dz=38] run function ctf:lobby/lobby/enter
execute in void positioned 22 58 -135 as @a unless entity @s[tag=ctf_lobby,dx=38,dy=38,dz=38] run function ctf:lobby/lobby/leave

# Play Music for players in lobby
execute as @a[tag=ctf_lobby, tag=!museq.ctf_note_lobby.mmp, scores={ctf_music=2}] run tag @s add museq.ctf_note_lobby.mmp

# Update Bossbar Timer
function ctf:lobby/timer/bossbar/toggle

# Paused Bossbars
execute if score $ctf_lobby_timer_paused value matches 1 run function ctf:lobby/timer/bossbar/paused



# Functions ran to continue the process of map loading
# Check if the loading process is currently active or done
execute if data storage ctf:temp {loading_map:active} run function ctf:lobby/load_map/check_progress with storage ctf:game
execute if data storage ctf:temp {loading_map:done} run function ctf:lobby/load_map/done with storage ctf:game