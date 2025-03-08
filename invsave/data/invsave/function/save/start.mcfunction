# Reset Shulkerbox and Data
function invsave:reset/shulkerbox
$data remove storage minecraft:invsave players.$(id)

# Store Hotbar
function invsave:reset/slot
function invsave:save/store/hotbar with storage invsave players

# Store Inventory
function invsave:reset/slot
function invsave:save/store/inventory with storage invsave players

# Store Armor
function invsave:reset/slot
function invsave:save/store/armor with storage invsave players

# Store Offhand
function invsave:reset/slot
function invsave:save/store/offhand with storage invsave players