# Backup function incase interactions or text displays disappear

# Kit Map Text
execute in void run summon minecraft:interaction 44 80.5 -106 {Tags:["ctf_kit_map_int"],width:1.1,height:1.1}
execute in void run summon minecraft:text_display 44 80.5 -106 {Tags:["ctf_kit_map_text"],billboard:"center"}
data modify entity @e[type=text_display,tag=ctf_kit_map_text,limit=1] text set value '["",{"text":"Toggle Map","color":"gold","bold": true}]'

# Kit Num Text
execute in void run summon minecraft:interaction 42 80.5 -104 {Tags:["ctf_kit_num_int"],width:1.1,height:1.1}
execute in void run summon minecraft:text_display 42 80.5 -104 {Tags:["ctf_kit_num_text"],billboard:"center"}
data modify entity @e[type=text_display,tag=ctf_kit_num_text,limit=1] text set value '["",{"text":"Toggle Kit","color":"gold","bold": true}]'