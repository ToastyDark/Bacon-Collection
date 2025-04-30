# Set score
#scoreboard players set $bomb_respawn_cd value 14
execute store result score $bomb_explode_timer value run data get storage ctf:game bomb_time_to_explode
scoreboard players set $bomb_explode_timer_d value 9
scoreboard players set $bomb_explode_timer_tick value 0

# Spawn Display
function ctf:game/_bomb/success/timer/spawn with storage ctf:game