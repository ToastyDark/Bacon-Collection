# Reset Shulkerbox and Data
function invsave:reset/shulkerbox
$function invsave:reset/previous_invsave with storage invsave $(path)

# Store Hotbar
$function invsave:reset/slot with storage invsave $(path)
$function invsave:save/store/hotbar with storage invsave $(path)

# Store Inventory
$function invsave:reset/slot with storage invsave $(path)
$function invsave:save/store/inventory with storage invsave $(path)

# Store Armor
$function invsave:reset/slot with storage invsave $(path)
$function invsave:save/store/armor with storage invsave $(path)

# Store Offhand
$function invsave:reset/slot with storage invsave $(path)
$function invsave:save/store/offhand with storage invsave $(path)