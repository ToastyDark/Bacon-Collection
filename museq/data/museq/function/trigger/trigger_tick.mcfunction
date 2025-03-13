# Generated File 

# ctf_note_hangup.mmp
scoreboard players enable @s mq.ctf_note_hangup.mmp
execute if entity @s[scores={mq.ctf_note_hangup.mmp=1..}] run function museq:search/change_song {song:"ctf_note_hangup.mmp"}
execute if entity @s[scores={mq.ctf_note_hangup.mmp=1..}] run scoreboard players reset @s mq.ctf_note_hangup.mmp

# ctf_note_lobby.mmp
scoreboard players enable @s mq.ctf_note_lobby.mmp
execute if entity @s[scores={mq.ctf_note_lobby.mmp=1..}] run function museq:search/change_song {song:"ctf_note_lobby.mmp"}
execute if entity @s[scores={mq.ctf_note_lobby.mmp=1..}] run scoreboard players reset @s mq.ctf_note_lobby.mmp

# ctf_note_rush.mmp
scoreboard players enable @s mq.ctf_note_rush.mmp
execute if entity @s[scores={mq.ctf_note_rush.mmp=1..}] run function museq:search/change_song {song:"ctf_note_rush.mmp"}
execute if entity @s[scores={mq.ctf_note_rush.mmp=1..}] run scoreboard players reset @s mq.ctf_note_rush.mmp

# ctf_note_silt.mmp
scoreboard players enable @s mq.ctf_note_silt.mmp
execute if entity @s[scores={mq.ctf_note_silt.mmp=1..}] run function museq:search/change_song {song:"ctf_note_silt.mmp"}
execute if entity @s[scores={mq.ctf_note_silt.mmp=1..}] run scoreboard players reset @s mq.ctf_note_silt.mmp

# test.mmp
scoreboard players enable @s mq.test.mmp
execute if entity @s[scores={mq.test.mmp=1..}] run function museq:search/change_song {song:"test.mmp"}
execute if entity @s[scores={mq.test.mmp=1..}] run scoreboard players reset @s mq.test.mmp

