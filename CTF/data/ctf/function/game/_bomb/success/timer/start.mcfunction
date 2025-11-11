# Set Time Value based on Bombsite's stored value
execute store result score $bomb_explode_timer value run data get entity @s data.time_to_explode

# Set score from map's time to explode value
scoreboard players remove $bomb_explode_timer value 1


scoreboard players set $bomb_explode_timer_d value 9
scoreboard players set $bomb_explode_timer_tick value 0

# Spawn Display
function ctf:game/_bomb/success/timer/spawn with storage ctf:game