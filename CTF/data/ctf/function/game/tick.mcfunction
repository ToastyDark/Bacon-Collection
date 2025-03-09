# Check if player dropped flag
execute if data storage ctf:game team1{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team1] run function ctf:game/flag/return/start with storage ctf:game team1
execute if data storage ctf:game team2{flag_stolen:true} unless entity @a[tag=ctf_has_flag_team2] run function ctf:game/flag/return/start with storage ctf:game team2