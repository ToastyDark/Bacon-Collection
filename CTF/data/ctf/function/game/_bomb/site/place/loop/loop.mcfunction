# Place bomb sites depending on how many are set for said map
$execute in $(dimension) run function ctf:game/_bomb/site/place/place with storage ctf:map $(map).team$(team_num).bsite[$(bombsites_placed)]

# Assign Stuff to Bombsite
$execute as @e[tag=ctf_bombsite_new] run function ctf:game/_bomb/site/place/assign {team_num:$(team_num)}

# Increment Counter by 1
$function ctf:game/_bomb/site/place/loop/inc_1 with storage ctf:game team$(team_num)