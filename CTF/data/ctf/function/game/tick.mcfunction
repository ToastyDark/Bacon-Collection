# Check if player dropped flag
execute if data storage ctf:game team1{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team1] run function ctf:game/flag/return/start with storage ctf:game team2
execute if data storage ctf:game team2{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team2] run function ctf:game/flag/return/start with storage ctf:game team1

# Check if player dropped bomb
execute if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:1} unless entity @a[tag=ctf_has_bomb_team1] run function ctf:game/bomb/return/start with storage ctf:game team1
execute if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:2} unless entity @a[tag=ctf_has_bomb_team2] run function ctf:game/bomb/return/start with storage ctf:game team2

# Replace Timers
execute if score $bomb_respawn_cd value matches 0.. run function ctf:game/bomb/place/timer/update
execute if score $flag2_respawn_cd value matches 0.. run function ctf:game/flag/place/timer/update with storage ctf:game team2
execute if score $flag1_respawn_cd value matches 0.. run function ctf:game/flag/place/timer/update with storage ctf:game team1