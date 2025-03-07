# execute positioned -733 66 -284 run function animestruct:start {width:"5",height:"12",length:"7",name:"door_red", dest:"-733 67 -276"}
scoreboard objectives add animestruct.ticks dummy

summon minecraft:marker ~ ~ ~ {Tags:[animestruct_marker, new_marker]}
$data modify entity @e[tag=animestruct_marker,tag=new_marker,limit=1] data set value {width:"$(width)",height:"$(height)",length:"$(length)",name:"$(name)", dest:"$(dest)"}
tag @e[tag=animestruct_marker,tag=new_marker] remove new_marker