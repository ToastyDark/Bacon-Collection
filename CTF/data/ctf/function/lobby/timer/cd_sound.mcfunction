# Title Countdown
execute if score $ctf_lobby_time value matches 1..5 run title @s times 5 10 5
execute if score $ctf_lobby_time value matches 1..5 run title @s title {"text":""}

# 5
execute if score $ctf_lobby_time value matches 5 run title @s subtitle {"text":"5","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 5 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5 1
execute if score $ctf_lobby_time value matches 5 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 0.5 0.1

# 4
execute if score $ctf_lobby_time value matches 4 run title @s subtitle {"text":"4","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 4 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.6 1
execute if score $ctf_lobby_time value matches 4 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 0.6 0.1

# 3
execute if score $ctf_lobby_time value matches 3 run title @s subtitle {"text":"3","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.7 1
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 0.7 0.1
execute if score $ctf_lobby_time value matches 3 run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.7 1

# 2
execute if score $ctf_lobby_time value matches 2 run title @s subtitle {"text":"2","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 2 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.8 1
execute if score $ctf_lobby_time value matches 2 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 0.8 0.1

# 1
execute if score $ctf_lobby_time value matches 1 run title @s subtitle {"text":"1","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 1 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.9 1
execute if score $ctf_lobby_time value matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.1 0.9 0.1


# Start Sound
execute if score $ctf_lobby_time value matches 0 run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.2 1.5 0.1