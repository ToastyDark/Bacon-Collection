data modify entity @e[type=text_display,tag=ctf_display_queue_team1,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team1"},"bold": true, "color": "gray"},{"text":" Players","color":"red","bold": true}]'
data modify entity @e[type=text_display,tag=ctf_display_queue_team2,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_team2"},"bold": true, "color": "gray"},{"text":" Players","color":"blue","bold": true}]'

# If game started, remove middle count?
execute unless data storage ctf:game {started:true} run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '["",{"score":{"objective":"value","name":"$ctf_queue_count_random"},"bold": true, "color": "gray"},{"text":" Players","color":"gold","bold": true}]'
execute if data storage ctf:game {started:true} run data modify entity @e[type=text_display,tag=ctf_display_queue_random,limit=1] text set value '[""]'