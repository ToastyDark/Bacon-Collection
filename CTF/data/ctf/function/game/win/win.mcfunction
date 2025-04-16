# Stop Game
data modify storage ctf:game started set value false

# Prep Announcement
title @a[tag=ctf_player] times 10t 5s 10t

# Winners Announcement
$title @a[team=ctf_team$(team_num)] title {"text":"Victory!","color":"green","bold":true}
$title @a[team=ctf_team$(team_num)] subtitle {"text":"Your team has won!","bold": true, "color": "dark_green"}
$execute as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1.3 0.1

# Losers Announcement
$title @a[team=ctf_team$(team_ops)] title {"text":"Defeated","color":"red","bold":true}
$title @a[team=ctf_team$(team_ops)] subtitle {"text":"Your team has lost!","bold": true, "color": "dark_red"}
$execute as @a[team=ctf_team$(team_ops)] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 0.2 0.7 0.1
$execute as @a[team=ctf_team$(team_ops)] at @s run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.2 0.6 0.1

# Set Winner and Loser
$data modify storage ctf:game winning_team set value team$(team_num)
$data modify storage ctf:game losing_team set value team$(team_ops)

# Schedule end
scoreboard players set $ctf_timer_end value 8
function ctf:game/win/end_timer