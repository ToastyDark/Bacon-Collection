# ---------------- Team 1 ----------------
execute unless score $ctf_queue_count_team1 value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_team1,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team1"},"bold": true, "color": "gray"},{"text":" Players","color":"red","bold": true}]'
execute if score $ctf_queue_count_team1 value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_team1,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team1"},"bold": true, "color": "gray"},{"text":" Player","color":"red","bold": true}]'


# ---------------- Team 2 ----------------
execute unless score $ctf_queue_count_team2 value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_team2,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team2"},"bold": true, "color": "gray"},{"text":" Players","color":"blue","bold": true}]'
execute if score $ctf_queue_count_team2 value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_team2,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team2"},"bold": true, "color": "gray"},{"text":" Player","color":"blue","bold": true}]'


# ---------------- Random Teams ----------------
# ------ Queue ------
execute unless data storage ctf:game {started:true} unless score $ctf_queue_count_random value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_random"},"bold": true, "color": "gray"},{"text":" Players","color":"gold","bold": true}]'
execute unless data storage ctf:game {started:true} if score $ctf_queue_count_random value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_random"},"bold": true, "color": "gray"},{"text":" Player","color":"gold","bold": true}]'

# ------ Players Ingame ------
execute if data storage ctf:game {started:true} unless score $ctf_queue_count_random value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '["",{"score":{"objective":"value","name":"%ctf_pcount_all"},"bold": true, "color": "gray"},{"text":" Players","color":"gold","bold": true}]'
execute if data storage ctf:game {started:true} if score $ctf_queue_count_random value matches 1 run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '["",{"score":{"objective":"value","name":"%ctf_pcount_all"},"bold": true, "color": "gray"},{"text":" Player","color":"gold","bold": true}]'


#------ Display OFF ------
#execute if data storage ctf:game {started:true} run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '[""]'