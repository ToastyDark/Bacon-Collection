# Plant a bomb at a neutral bombsite
function ctf:game/_bomb/plant/msg/planting
$execute as @e[type=armadillo,tag=ctf_bombsite,scores={ctf_bombsite_click=40..}] at @s run function ctf:game/_bomb/plant/plant with storage ctf:game team$(team_ops)
execute if entity @s[type=player] run experience add @s 5 points