# Move Spot NUmber Up
scoreboard players add %ctf_firework_spot temp 1
execute if score %ctf_firework_spot temp matches 5.. run scoreboard players set %ctf_firework_spot temp 1

$execute if score %ctf_firework_spot temp matches 1 run function ctf:game/win/firework/place/bsite_1 with storage ctf:game team$(team_num).bsite.1
$execute if score %ctf_firework_spot temp matches 2 run function ctf:game/win/firework/place/bsite_2 with storage ctf:game team$(team_num).bsite.2
$execute if score %ctf_firework_spot temp matches 3 run function ctf:game/win/firework/place/bsite_3 with storage ctf:game team$(team_num).bsite.3
execute if score %ctf_firework_spot temp matches 4 run function ctf:game/win/firework/place/flag with storage ctf:game team$(team_num)