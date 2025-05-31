# Reset Shulkerbox and Data
function invsave:reset/shulkerbox
$function invsave:reset/previous_ecsave with storage invsave $(path)

# Reset (I think)
$function invsave:reset/slot with storage invsave $(path)

# Store Ender Chest Contents
$function ecsave:save/store with storage invsave $(path)