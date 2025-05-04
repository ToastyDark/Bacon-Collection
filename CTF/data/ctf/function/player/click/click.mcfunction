# Check if player has bomb before clicking bombsite
execute if entity @s[tag=ctf_has_bomb] run function ctf:player/click/ray/cast