scoreboard players set @s actionbar_cd 1
$title @s actionbar ["",{selector:"@a[scores={id=$(invite_active)},limit=1]",bold:true,color:"gold"},{text:" has already sent an invitation.",bold:true,color:"gold"}]

# Sound
function ctf:lobby/invite/msg/denied_sound