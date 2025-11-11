# Add 1 to counter and store
scoreboard players add bombsites_placed value 1
$execute store result storage ctf:game team$(team_num).bombsites_placed int 1 run scoreboard players get bombsites_placed value

# Place Bombsite if there's a bombsite at array position
$function ctf:game/_bomb/site/place/loop/check_array_position with storage ctf:game team$(team_num)