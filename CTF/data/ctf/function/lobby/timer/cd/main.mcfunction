# Title Countdown
execute if score $ctf_lobby_time value matches 1..5 run title @s times 5 10 5
execute if score $ctf_lobby_time value matches 1..5 run title @s title {"text":""}

# 6...
execute if score $ctf_lobby_time value matches 6..10 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.5 0.3


# 5
execute if score $ctf_lobby_time value matches 5 run title @s subtitle {"text":"5","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 5 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5 1
execute if score $ctf_lobby_time value matches 5 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.5 0.3

# 4
execute if score $ctf_lobby_time value matches 4 run title @s subtitle {"text":"4","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 4 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.6 1
execute if score $ctf_lobby_time value matches 4 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.6 0.3

# 3
execute if score $ctf_lobby_time value matches 3 run title @s subtitle {"text":"3","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.7 1
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.7 0.3
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.7 1

# 2
execute if score $ctf_lobby_time value matches 2 run title @s subtitle {"text":"2","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 2 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.8 1
execute if score $ctf_lobby_time value matches 2 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.8 0.3

# 1
execute if score $ctf_lobby_time value matches 1 run title @s subtitle {"text":"1","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 1 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.9 1
execute if score $ctf_lobby_time value matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.9 0.3


# Start Sound
execute if score $ctf_lobby_time value matches 0 run schedule function ctf:lobby/timer/cd/start_sound 2t replace