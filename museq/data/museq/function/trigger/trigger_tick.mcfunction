# Generated File 

# ctf_note_hangup.mmp
scoreboard players enable @s mq.ctf_note_hangup.mmp
execute if entity @s[scores={mq.ctf_note_hangup.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.ctf_note_hangup.mmp=1..}] run tag @s add museq.ctf_note_hangup.mmp
execute if entity @s[scores={mq.ctf_note_hangup.mmp=1..}] run scoreboard players reset @s mq.ctf_note_hangup.mmp

# ctf_note_lobby.mmp
scoreboard players enable @s mq.ctf_note_lobby.mmp
execute if entity @s[scores={mq.ctf_note_lobby.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.ctf_note_lobby.mmp=1..}] run tag @s add museq.ctf_note_lobby.mmp
execute if entity @s[scores={mq.ctf_note_lobby.mmp=1..}] run scoreboard players reset @s mq.ctf_note_lobby.mmp

# ctf_note_rush.mmp
scoreboard players enable @s mq.ctf_note_rush.mmp
execute if entity @s[scores={mq.ctf_note_rush.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.ctf_note_rush.mmp=1..}] run tag @s add museq.ctf_note_rush.mmp
execute if entity @s[scores={mq.ctf_note_rush.mmp=1..}] run scoreboard players reset @s mq.ctf_note_rush.mmp

# ctf_note_silt.mmp
scoreboard players enable @s mq.ctf_note_silt.mmp
execute if entity @s[scores={mq.ctf_note_silt.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.ctf_note_silt.mmp=1..}] run tag @s add museq.ctf_note_silt.mmp
execute if entity @s[scores={mq.ctf_note_silt.mmp=1..}] run scoreboard players reset @s mq.ctf_note_silt.mmp

# range.mmp
scoreboard players enable @s mq.range.mmp
execute if entity @s[scores={mq.range.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.range.mmp=1..}] run tag @s add museq.range.mmp
execute if entity @s[scores={mq.range.mmp=1..}] run scoreboard players reset @s mq.range.mmp

# test.mmp
scoreboard players enable @s mq.test.mmp
execute if entity @s[scores={mq.test.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.test.mmp=1..}] run tag @s add museq.test.mmp
execute if entity @s[scores={mq.test.mmp=1..}] run scoreboard players reset @s mq.test.mmp

# whatever.mmp
scoreboard players enable @s mq.whatever.mmp
execute if entity @s[scores={mq.whatever.mmp=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.whatever.mmp=1..}] run tag @s add museq.whatever.mmp
execute if entity @s[scores={mq.whatever.mmp=1..}] run scoreboard players reset @s mq.whatever.mmp

# [Stop All]
scoreboard players enable @s mq.stopall
execute if entity @s[scores={mq.stopall=1..}] run function museq:meta/stopall
execute if entity @s[scores={mq.stopall=1..}] run scoreboard players reset @s mq.stopall

