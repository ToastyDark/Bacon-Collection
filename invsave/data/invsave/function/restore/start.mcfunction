# Prepare Inventory
clear @s

# Reset Shulkerbox and Data
function invsave:reset/shulkerbox

# ----------- Return Items -----------
# Hotbar
$function invsave:reset/slot with storage invsave $(path)
$function invsave:restore/type/hotbar with storage invsave $(path)

# Inventory
$function invsave:reset/slot with storage invsave $(path)
$function invsave:restore/type/inventory with storage invsave $(path)

# Armor
$function invsave:reset/slot with storage invsave $(path)
$function invsave:restore/type/armor with storage invsave $(path)

# Offhand
$function invsave:reset/slot with storage invsave $(path)
$function invsave:restore/type/offhand with storage invsave $(path)


# ----------- Remove Storage Once Items Restored -----------
$data remove storage invsave $(path).$(id).hotbar
$data remove storage invsave $(path).$(id).inventory
$data remove storage invsave $(path).$(id).armor
$data remove storage invsave $(path).$(id).offhand

