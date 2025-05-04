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

