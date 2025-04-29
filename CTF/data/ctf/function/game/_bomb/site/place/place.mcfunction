# Spawn Bombsite Mob
# Put on team "z_ctf_bombsite" to prevent pushing the bombsite mob

$execute positioned $(x) $(y) $(z) run summon armadillo ~ ~ ~ {Tags["ctf_bombsite" , "ctf_bombsite_team$(team_num)" , "ctf_bombsite_1"],PersistenceRequired:1b,CanPickUpLoot:0b,attributes:[{id:"minecraft:movement_speed",base:0}],Team:"z_ctf_bombsite"}