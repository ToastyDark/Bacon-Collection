# Check all camels if ID matched, then kill camel
execute at @s as @e[type=camel,tag=ctf.camel_pet] if score @s id = @p id run function ctf:item/camel_pet/kill/kill