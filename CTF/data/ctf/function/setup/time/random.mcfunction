# Pick random number with Time
execute store result score $ctf_random_time value run random value 1..5

# Sunrise
execute if score $ctf_random_time value matches 1 run function ctf:setup/time/set/sunrise

# Noon
execute if score $ctf_random_time value matches 2 run function ctf:setup/time/set/noon

# Sunset
execute if score $ctf_random_time value matches 3 run function ctf:setup/time/set/sunset

# Night
execute if score $ctf_random_time value matches 4 run function ctf:setup/time/set/night

# Midnight
execute if score $ctf_random_time value matches 5 run function ctf:setup/time/set/midnight