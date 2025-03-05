scoreboard objectives add cf_data dummy
scoreboard objectives add cfpicker trigger

function colorfall:initialize_player_ids

# DEFAULT: /gamerule maxCommandChainLength 65536
gamerule maxCommandChainLength 1048576

# FLAGS

# has a color been removed yet?
scoreboard players set ?color_removed cf_data 0

# is the game being played currently?
scoreboard players set ?in_game cf_data 0

# -------------------


# VARIABLES (using % because my four key is broken)

# these should get overriden later, but so you know what they are:

# turn timer
scoreboard players set %timer cf_data 1

# turn number
# also used during initialization to sort out player ids
scoreboard players set %turn cf_data 0

# when the turn number = this number, it will reset to 0
scoreboard players set %playercount cf_data 0

# used to check if a certain block color exists in the play area
scoreboard players set %color_count cf_data 0

# random number used to choose the next random block-- overriden in the randomize_block function
scoreboard players set %random cf_data 1

# keep track of color count
scoreboard players set %colors_left cf_data 9


# -------------------


# CONSTANTS

# turn length in ticks
scoreboard players set !turn_length cf_data 500

# shuffle option appears when this many colors or less are in the arena
scoreboard players set !shuffle_threshold cf_data 3

# automatically shuffle when this many colors or less are in the arena
scoreboard players set !auto_shuffle_threshold cf_data 1