# Generated File 

# range.mmp
scoreboard players enable @s mq.range.mmp
execute if entity @s[scores={mq.range.mmp=1..}] run function museq:search/change_song {song:"range.mmp"}
execute if entity @s[scores={mq.range.mmp=1..}] run scoreboard players reset @s mq.range.mmp

# range.mmp.bak
scoreboard players enable @s mq.range.mmp.bak
execute if entity @s[scores={mq.range.mmp.bak=1..}] run function museq:search/change_song {song:"range.mmp.bak"}
execute if entity @s[scores={mq.range.mmp.bak=1..}] run scoreboard players reset @s mq.range.mmp.bak

