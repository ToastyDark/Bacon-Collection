scoreboard players reset @s ctf.invite

# Start Timer
scoreboard players set $ctf_lobby_time value 40

# Broadcast
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5 1