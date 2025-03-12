# Save Player Stats from Round

# -------------- Kills --------------
scoreboard players operation @s ctf_stats_kills_melee += @s ctf_round_kills_melee
scoreboard players operation @s ctf_stats_kills_ranged += @s ctf_round_kills_ranged

# Overall Kills (Melee + Bow Kills)
scoreboard players set @s ctf_stats_kills_overall 0
scoreboard players operation @s ctf_stats_kills_overall += @s ctf_stats_kills_melee
scoreboard players operation @s ctf_stats_kills_overall += @s ctf_stats_kills_ranged

# Reset
scoreboard players reset @s ctf_round_kills_melee
scoreboard players reset @s ctf_round_kills_ranged


# -------------- Deaths --------------
scoreboard players operation @s ctf_stats_deaths_melee += @s ctf_round_deaths_melee
scoreboard players operation @s ctf_stats_deaths_ranged += @s ctf_round_deaths_ranged

# Overall Deaths (Melee + Ranged)
scoreboard players set @s ctf_stats_deaths_overall 0
scoreboard players operation @s ctf_stats_deaths_overall += @s ctf_stats_deaths_melee
scoreboard players operation @s ctf_stats_deaths_overall += @s ctf_stats_deaths_ranged
# Reset
scoreboard players reset @s ctf_round_deaths_melee
scoreboard players reset @s ctf_round_deaths_ranged


# -------------- Flag Stats --------------
scoreboard players operation @s ctf_stats_flags_stolen += @s ctf_round_flags_stolen
scoreboard players operation @s ctf_stats_flags_captured += @s ctf_round_flags_captured
scoreboard players operation @s ctf_stats_flags_returned += @s ctf_round_flags_returned
scoreboard players operation @s ctf_stats_flag_deaths += @s ctf_round_flag_deaths

# -------------- Bomb Stats --------------
scoreboard players operation @s ctf_stats_bombs_pickups += @s ctf_round_bombs_pickups
scoreboard players operation @s ctf_stats_bombs_delivered += @s ctf_round_bombs_delivered
scoreboard players operation @s ctf_stats_bombs_stopped += @s ctf_round_bombs_stopped
scoreboard players operation @s ctf_stats_bomb_deaths += @s ctf_round_bomb_deaths
