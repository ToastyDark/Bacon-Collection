# Stop if map already exists
$execute if data storage ctf:map $(map_id) run return run title @s actionbar {"text": "A Map with that ID already exists","bold": true,"color": "red"}

# Stop if bombsite count is above 3



# Check if hand is empty
execute if items entity @s weapon.mainhand * run return run title @s actionbar {"text": "Please clear your hand!","bold": true,"color": "red"}


# Give Egg
function ctf:create/give_egg

# Set the map the player will be working on throughout the process
$function ctf:create/setup/prep_working_map {"map_id":"$(map_id)", "bombsites": "$(bombsites)", "current_team":1}


# Set Next Step
scoreboard players set @s ctf_create_step 0
function ctf:create/step/next_step with storage ctf:temp map_create_data.temp

# ----------------------------- -----------------------------


# Set selected map's dimension
function ctf:create/config/set_dimension with storage ctf:temp map_create_data.temp