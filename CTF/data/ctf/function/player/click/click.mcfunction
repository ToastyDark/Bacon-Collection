# Check if player has bomb before clicking bombsite
execute if entity @s[tag=ctf_has_bomb] run function ctf:player/click/ray/cast

# Check if player is diffusing bomb
execute unless data storage ctf:game {bomb_planted:false} run function ctf:player/click/ray/cast