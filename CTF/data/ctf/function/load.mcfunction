# Load Triggers
function ctf:trigger/load

# Load Stats
function ctf:stats/load


# More
scoreboard objectives add value dummy
scoreboard objectives add ctf_points dummy
scoreboard objectives add ctf_kit dummy
scoreboard objectives add ctf_kit_swap_cd dummy
scoreboard objectives add ctf_died deathCount
scoreboard objectives add ctf_respawn_cd dummy
scoreboard objectives add ctf_flag_time dummy
scoreboard objectives add ctf_flag_time_firework dummy
scoreboard objectives add ctf_in_ops_spawn dummy
scoreboard objectives add ctf_in_ops_spawn_prev dummy
scoreboard objectives add ctf_flag_capture_cd dummy
scoreboard objectives add ctf_session dummy
scoreboard objectives add ctf_leave_game minecraft.custom:leave_game
scoreboard objectives add ctf_hunger food
scoreboard objectives add ctf_music dummy

scoreboard objectives add ctf_crouch_time dummy
scoreboard objectives add ctf_crouch_time_prev dummy

scoreboard objectives add ctf_mined_tnt minecraft.mined:tnt

# New Bomb Stuff
scoreboard objectives add ctf_bomb_time dummy
scoreboard objectives add ctf_bomb_time_prev dummy



# Break Wool
scoreboard objectives add ctf_mined_wool_any dummy

scoreboard objectives add ctf_mined_wool_red minecraft.mined:red_wool
scoreboard objectives add ctf_mined_wool_orange minecraft.mined:orange_wool
scoreboard objectives add ctf_mined_wool_yellow minecraft.mined:yellow_wool
scoreboard objectives add ctf_mined_wool_lime minecraft.mined:lime_wool
scoreboard objectives add ctf_mined_wool_green minecraft.mined:green_wool
scoreboard objectives add ctf_mined_wool_light_blue minecraft.mined:light_blue_wool
scoreboard objectives add ctf_mined_wool_cyan minecraft.mined:cyan_wool
scoreboard objectives add ctf_mined_wool_blue minecraft.mined:blue_wool
scoreboard objectives add ctf_mined_wool_purple minecraft.mined:purple_wool
scoreboard objectives add ctf_mined_wool_magenta minecraft.mined:magenta_wool
scoreboard objectives add ctf_mined_wool_pink minecraft.mined:pink_wool
scoreboard objectives add ctf_mined_wool_light_gray minecraft.mined:light_gray_wool
scoreboard objectives add ctf_mined_wool_gray minecraft.mined:gray_wool
scoreboard objectives add ctf_mined_wool_brown minecraft.mined:brown_wool
scoreboard objectives add ctf_mined_wool_black minecraft.mined:black_wool
scoreboard objectives add ctf_mined_wool_white minecraft.mined:white_wool


# Time
scoreboard objectives add ctf_time_tick dummy
scoreboard objectives add ctf_time_sec dummy
scoreboard objectives add ctf_time_min dummy
scoreboard objectives add ctf_time_hour dummy
scoreboard objectives add ctf_time_day dummy

# Item stuff -jake
scoreboard objectives add ctf.item.crossbow_used minecraft.used:minecraft.crossbow
scoreboard objectives add ctf.item.automatic_crossbow dummy