scoreboard players set %turn cf_data 0
execute as @a run function colorfall:player.get_my_id
scoreboard players operation %playercount cf_data = %turn cf_data
scoreboard players set %turn cf_data 0