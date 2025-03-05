scoreboard players enable @s cfpicker

function colorfall:detect_block {"block":"blue_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Blue!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 1"}}
function colorfall:detect_block {"block":"red_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Red!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 2"}}
function colorfall:detect_block {"block":"orange_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Orange!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 3"}}
function colorfall:detect_block {"block":"pink_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Pink!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 4"}}
function colorfall:detect_block {"block":"purple_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Purple!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 5"}}
function colorfall:detect_block {"block":"yellow_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Yellow!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 6"}}
function colorfall:detect_block {"block":"lime_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Lime!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 7"}}
function colorfall:detect_block {"block":"brown_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Brown!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 8"}}
function colorfall:detect_block {"block":"white_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove White!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 9"}}
function colorfall:detect_block {"block":"black_wool"}
execute unless score %color_count cf_data matches 0 as @s run tellraw @s {"text":"[Remove Black!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 10"}}

execute if score %colors_left cf_data <= !shuffle_threshold cf_data as @s run tellraw @s {"text":"[Shuffle!] ","clickEvent":{"action":"run_command","value":"/trigger cfpicker set 17"}}