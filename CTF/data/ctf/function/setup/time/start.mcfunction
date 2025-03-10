# Store Previous Time
execute store result storage ctf:game temp.ctf_saved_time int 1 run time query daytime

# Check if time is random
execute if data storage ctf:game time{random:true} run return run function ctf:setup/time/random with storage ctf:game

# Sunrise
execute if data storage ctf:game time{sunrise:true} run function ctf:setup/time/set/sunrise

# Noon
execute if data storage ctf:game time{noon:true} run function ctf:setup/time/set/noon

# Sunset
execute if data storage ctf:game time{sunset:true} run function ctf:setup/time/set/sunset

# Night
execute if data storage ctf:game time{night:true} run function ctf:setup/time/set/night

# Midnight
execute if data storage ctf:game time{midnight:true} run function ctf:setup/time/set/midnight