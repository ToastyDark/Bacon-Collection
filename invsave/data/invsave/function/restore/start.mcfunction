# Prepare Inventory
clear @s

# Reset Shulkerbox and Data
function invsave:reset/shulkerbox

# ----------- Return Items -----------
# Horbar
function invsave:reset/slot
function invsave:restore/type/hotbar with storage invsave players

# Inventory
function invsave:reset/slot
function invsave:restore/type/inventory with storage invsave players

# Armor
#function invsave:reset/slot
function invsave:restore/type/armor with storage invsave players

# Offhand
#function invsave:reset/slot
function invsave:restore/type/offhand with storage invsave players

