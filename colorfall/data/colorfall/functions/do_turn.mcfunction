# display timer
scoreboard players remove %timer cf_data 1
title @a actionbar [{"score":{"objective":"cf_data","name":"%timer"},"color":"red"}]

# if the timer reaches 0, set the color_removed flag to true, which will initiate a new turn.
execute if score %timer cf_data matches 0 run scoreboard players set ?color_removed cf_data 1

# remove colors based on cfpicker
execute as @a if score @s cfpicker matches 1 run fill -1061 100 1009 -1079 118 991 air replace blue_wool
execute as @a if score @s cfpicker matches 2 run fill -1061 100 1009 -1079 118 991 air replace red_wool
execute as @a if score @s cfpicker matches 3 run fill -1061 100 1009 -1079 118 991 air replace orange_wool
execute as @a if score @s cfpicker matches 4 run fill -1061 100 1009 -1079 118 991 air replace pink_wool
execute as @a if score @s cfpicker matches 5 run fill -1061 100 1009 -1079 118 991 air replace purple_wool
execute as @a if score @s cfpicker matches 6 run fill -1061 100 1009 -1079 118 991 air replace yellow_wool
execute as @a if score @s cfpicker matches 7 run fill -1061 100 1009 -1079 118 991 air replace lime_wool
execute as @a if score @s cfpicker matches 8 run fill -1061 100 1009 -1079 118 991 air replace brown_wool
execute as @a if score @s cfpicker matches 9 run fill -1061 100 1009 -1079 118 991 air replace white_wool
execute as @a if score @s cfpicker matches 10 run fill -1061 100 1009 -1079 118 991 air replace black_wool

execute as @a if score @s cfpicker matches 17 run function colorfall:shuffle

execute as @a unless score @s cfpicker matches 0 run scoreboard players remove %colors_left cf_data 1
execute as @a unless score @s cfpicker matches 0 run scoreboard players set ?color_removed cf_data 1
execute as @a unless score @s cfpicker matches 0 run scoreboard players set @s cfpicker 0

execute if score %colors_left cf_data <= !auto_shuffle_threshold cf_data run say Auto-shuffling...
execute if score %colors_left cf_data <= !auto_shuffle_threshold cf_data run function colorfall:shuffle

# if the color_removed flag is true (1), start next turn;

# change to the next turn
execute if score ?color_removed cf_data matches 1 run scoreboard players add %turn cf_data 1
execute if score %turn cf_data >= %playercount cf_data run scoreboard players set %turn cf_data 0

# reset timer
execute if score ?color_removed cf_data matches 1 run scoreboard players operation %timer cf_data = !turn_length cf_data

# send out the chat message for the current player to remove a color
execute if score ?color_removed cf_data matches 1 as @a if score @s cf_data = %turn cf_data run function colorfall:prompt_color_removal

# reset the 'color removed' flag
execute if score ?color_removed cf_data matches 1 run scoreboard players set ?color_removed cf_data 0

# if you die
execute positioned -1079 99 991 as @a[team=colorfall] unless entity @s[dx=18,dy=25,dz=18] run tp -1069.44 128.68 1002.00
execute positioned -1079 99 991 as @a unless entity @s[dx=18,dy=25,dz=18] run team leave @s[team=colorfall]

# if no one is in the game area, set ?in_game to false (0)
execute positioned -1079 99 991 unless entity @a[dx=18,dy=25,dz=18] run say No one is in the arena. [Game ending..]
execute positioned -1079 99 991 unless entity @a[dx=18,dy=25,dz=18] run scoreboard players set ?in_game cf_data 0

# if only one player is in the game area, THEY WIN!!!
execute positioned -1079 99 991 store result score %players_in_arena cf_data if entity @a[dx=18,dy=25,dz=18]
execute if score %players_in_arena cf_data matches 1 run say YOU WIN!!!
execute if score %players_in_arena cf_data matches 1 positioned -1079 99 991 as @a[dx=18,dy=25,dz=18] run effect give @s minecraft:glowing 10

# when you die, remove from contention