# ----------- Force Load -----------
forceload add ~ ~

# Prepare Enderchest
function ecsave:echest/clear

# Reset Shulkerbox and Data
function invsave:reset/shulkerbox

# ----------- Return Items -----------
$function invsave:reset/slot with storage invsave $(path)
$function ecsave:restore/restore with storage invsave $(path)


# ----------- Remove Storage Once Items Restored -----------
$function invsave:reset/previous_ecsave with storage invsave $(path)

# ----------- Unload Chunk -----------
forceload remove ~ ~

