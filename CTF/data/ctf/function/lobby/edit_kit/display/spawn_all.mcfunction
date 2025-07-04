# Backup function incase interactions or text displays disappear

# Remove old first
kill @e[type=interaction,tag=ctf_kit_map_int]
kill @e[type=interaction,tag=ctf_kit_num_int]
kill @e[type=text_display,tag=ctf_kit_map_text]
kill @e[type=text_display,tag=ctf_kit_num_text]
kill @e[type=text_display,tag=ctf_kit_editor_text]


# Kit Map Text
execute in void run summon minecraft:interaction 44 80.5 -106 {Tags:["ctf_kit_map_int"],width:1.1,height:1.1}
execute in void run summon minecraft:text_display 44 81 -106 {Tags:["ctf_kit_map_text"],billboard:"center"}
data modify entity @e[type=text_display,tag=ctf_kit_map_text,limit=1] text set value ["",{"text":"Cycle Map","color":"green","bold": true}]

# Kit Num Text
execute in void run summon minecraft:interaction 42 80.5 -104 {Tags:["ctf_kit_num_int"],width:1.1,height:1.1}
execute in void run summon minecraft:text_display 42 81 -104 {Tags:["ctf_kit_num_text"],billboard:"center"}
data modify entity @e[type=text_display,tag=ctf_kit_num_text,limit=1] text set value ["",{"text":"Cycle Kit","color":"green","bold": true}]

# Kit Editor Text
execute in void run summon minecraft:text_display 43 80.5 -105 {Tags:["ctf_kit_editor_text"],billboard:"center"}
data modify entity @e[type=text_display,tag=ctf_kit_editor_text,limit=1] text set value ["",{"text":"Kit Editor","color":"red","bold": true}]