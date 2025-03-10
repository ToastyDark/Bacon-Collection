# Reset Score
scoreboard players reset @s ctf_mined_tnt

# Stop if player is not in game
execute if entity @s[tag=!ctf_player] run return fail

# Stop if player has flag
execute if entity @s[tag=ctf_has_flag] run return run function ctf:game/msg/already_has_objective


# Steal Bomb
execute at @s run function ctf:game/bomb/take/take