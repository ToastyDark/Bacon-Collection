# Reset Shulkerbox and Data
function invsave:reset/shulkerbox
$data remove storage invsave $(path).$(id)

# Reset (I think)
$function invsave:reset/slot with storage invsave $(path)

# Store Ender Chest Contents
$function ecsave:save/store with storage invsave $(path)