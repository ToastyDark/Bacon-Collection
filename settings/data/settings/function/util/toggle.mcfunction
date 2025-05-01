$execute if score $(setting_selector) $(setting_objective) matches 1 run scoreboard players set $new_setting $(setting_objective) 0
$execute if score $(setting_selector) $(setting_objective) matches 0 run scoreboard players set $new_setting $(setting_objective) 1
$scoreboard players operation $(setting_selector) $(setting_objective) = $new_setting $(setting_objective)

function settings:settings