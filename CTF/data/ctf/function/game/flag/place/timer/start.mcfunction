# Set score
#$scoreboard players set $flag$(team_ops)_respawn_cd value 9
$execute store result score $flag$(team_ops)_respawn_cd value run data get storage ctf:game flag_respawn_delay
$scoreboard players remove $flag$(team_ops)_respawn_cd value 1
$scoreboard players set $flag$(team_ops)_respawn_cd_d value 9
$scoreboard players set $flag$(team_ops)_respawn_tick value 0

# Spawn Display
$function ctf:game/flag/place/timer/spawn with storage ctf:game team$(team_ops)