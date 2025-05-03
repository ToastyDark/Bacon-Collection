# Spawn Bombsite Mob
# Put on team "z_ctf_bombsite" to prevent pushing the bombsite mob
team add z_ctf_bombsite
team modify z_ctf_bombsite collisionRule pushOtherTeams

$summon armadillo $(x) $(y) $(z) {Tags:["ctf_bombsite" , "ctf_bombsite_team$(team_num)" , "ctf_bombsite_$(bombsite_num)"],PersistenceRequired:1b,CanPickUpLoot:0b,attributes:[{id:"minecraft:movement_speed",base:0}],Team:"z_ctf_bombsite"}
#$summon interaction $(x) $(y) $(z) {Tags:["ctf_bombsite" , "ctf_bombsite_team$(team_num)" , "ctf_bombsite_$(bombsite_num)"],width:1b,height:1b}