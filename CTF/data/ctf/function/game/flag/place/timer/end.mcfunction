# Reset Values
$scoreboard players reset $flag$(team_ops)_respawn_cd value
$scoreboard players reset $flag$(team_ops)_respawn_cd_d value
$scoreboard players reset $flag$(team_ops)_respawn_cd_tick value

# Place Flag
$function ctf:game/flag/place/replace with storage ctf:game team$(team_ops)

# Kill Display
$kill @e[type=text_display,tag=ctf_flag$(team_ops)_timer]