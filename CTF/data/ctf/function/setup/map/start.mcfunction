# Store Selected Map Data before clearing
data modify storage ctf:temp map_selected set from storage ctf:game map

# Clear Previous Game Data
# data remove storage ctf:game


# Load Map Data as Game Data
data modify storage ctf:game map set from storage ctf:temp map_selected
function ctf:setup/map/load_data with storage ctf:game


# Replace empty values with defaults
function ctf:setup/map/default_data with storage ctf:game