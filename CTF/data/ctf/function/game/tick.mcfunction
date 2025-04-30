# Run Map Tick
$function ctf:map/$(map)/tick


# End if no players in game



# Check if player dropped flag
execute if data storage ctf:game team1{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team1] run function ctf:game/flag/return/start with storage ctf:game team2
execute if data storage ctf:game team2{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team2] run function ctf:game/flag/return/start with storage ctf:game team1

# Check if player dropped bomb
execute if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:1} unless entity @a[tag=ctf_has_bomb_team1] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team1
execute if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:2} unless entity @a[tag=ctf_has_bomb_team2] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team2

# Check Bombsite tick
execute as @e[type=interaction,tag=ctf_bombsite] run function ctf:game/_bomb/site/tick


# Replace Timers
execute if score $bomb_respawn_cd value matches 0.. run function ctf:game/_bomb/place/timer/update
execute if score $flag1_respawn_cd value matches 0.. run function ctf:game/flag/place/timer/update with storage ctf:game team1
execute if score $flag2_respawn_cd value matches 0.. run function ctf:game/flag/place/timer/update with storage ctf:game team2


# Win if Team reachs points
execute if score ctf_team1 ctf_points >= $ctf_points_to_win value run function ctf:game/win/win with storage ctf:game team1
execute if score ctf_team2 ctf_points >= $ctf_points_to_win value run function ctf:game/win/win with storage ctf:game team2

# Win if no players on other team
execute unless data storage ctf:game {debug:true} unless entity @a[team=ctf_team1] run function ctf:game/win/win with storage ctf:game team2
execute unless data storage ctf:game {debug:true} unless entity @a[team=ctf_team2] run function ctf:game/win/win with storage ctf:game team1



# Capture Flag Sound
execute if score $ctf_team1_capture_sound value matches 1.. run function ctf:game/flag/capture/sound with storage ctf:game team1
execute if score $ctf_team2_capture_sound value matches 1.. run function ctf:game/flag/capture/sound with storage ctf:game team2