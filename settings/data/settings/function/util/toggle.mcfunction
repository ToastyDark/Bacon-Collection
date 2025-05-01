$execute if score $(selector) $(objective) matches 1 run scoreboard players set $new_setting $(objective) 0
$execute if score $(selector) $(objective) matches 0 run scoreboard players set $new_setting $(objective) 1
$scoreboard players operation $(selector) $(objective) = $new_setting $(objective)

function settings:settings