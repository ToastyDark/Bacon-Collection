# Stop if Timer Disabled
execute unless score $ctf_lobby_timer_enabled value matches 1 run return fail

# Remove Time
scoreboard players remove $ctf_lobby_timer value 1


# Loop
schedule function ctf:lobby/timer/remove 1s