# Reset Score
scoreboard players reset @s ctf_mined_tnt

# Stop if player is not in game
execute if entity @s[tag=!ctf_player] run return fail


# Steal Bomb
execute at @s run function ctf:game/bomb/take/take