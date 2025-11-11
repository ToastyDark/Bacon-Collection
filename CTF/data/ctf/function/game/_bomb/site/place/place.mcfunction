# Spawn Bombsite Mob
# Put on team "z_ctf_bombsite" to prevent pushing the bombsite mob
team add z_ctf_bombsite
team modify z_ctf_bombsite collisionRule pushOtherTeams

# Spawn Bombsite
$summon armadillo $(x) $(y) $(z) {Tags:["ctf_bombsite", "ctf_bombsite_new"],Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,attributes:[{id:"minecraft:movement_speed",base:0}],Team:"z_ctf_bombsite"}

# Rotate Bombsite Mob
$execute positioned $(x) $(y) $(z) run rotate @n[type=armadillo,distance=..3] $(rx) $(ry)
