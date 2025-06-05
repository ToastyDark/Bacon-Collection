# Reset Door Uses
scoreboard players set $ctf_map_sandcastle_door_team1 value 0
scoreboard players set $ctf_map_sandcastle_door_team2 value 0

# Reset Doors
#function ctf:map/sandcastle/reset_begin



# Start CTF Music
schedule function ctf:game/music/stop_for_all 3t replace
schedule function ctf:game/music/start_for_all 20t replace