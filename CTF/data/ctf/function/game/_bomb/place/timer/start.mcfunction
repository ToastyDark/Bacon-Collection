# Set score
#scoreboard players set $bomb_respawn_cd value 14
execute store result score $bomb_respawn_cd value run data get storage ctf:game bomb_respawn_delay
scoreboard players set $bomb_respawn_cd_d value 9
scoreboard players set $bomb_respawn_tick value 0

# Spawn Display
function ctf:game/_bomb/place/timer/spawn with storage ctf:game