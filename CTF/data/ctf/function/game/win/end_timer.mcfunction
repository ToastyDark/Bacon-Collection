# Stop if Timer is Done
execute if score $ctf_timer_end value matches ..-1 run return fail

# Summon Fireworks
scoreboard players set %ctf_firework_spot temp 0
execute if data storage ctf:game {"winning_team":team1} run function ctf:game/win/firework/main with storage ctf:game team1
execute if data storage ctf:game {"winning_team":team2} run function ctf:game/win/firework/main with storage ctf:game team2



# Actionbar
execute if score $ctf_timer_end value matches 1..5 run title @a[tag=ctf_player] actionbar ["",{"text":"Returning to Lobby in: ","color": "gold","bold": true},{"score":{"objective":"value","name":"$ctf_timer_end"},"color":"yellow","bold": true}]

# Return players to lobby on 0
execute if score $ctf_timer_end value matches 0 run function ctf:game/end


# Check if Timer should still be removing
execute if score $ctf_timer_end value matches ..-1 run return fail

scoreboard players remove $ctf_timer_end value 1
schedule function ctf:game/win/end_timer 1s replace