# If player doesn't have kit
execute unless entity @s[scores={ctf_kit=1..}] run scoreboard players set @s ctf_kit 0
# Next Kit
execute unless entity @s[scores={ctf_died=1..}] run scoreboard players add @s ctf_kit 1


# +1 Kit Num
# Store Kit Number and
scoreboard players operation $plus_2 value = @s ctf_kit
scoreboard players add $plus_2 value 1


# Store Kit Number and +1
$execute store result storage ctf:game team$(team_num).kit_num int 1 run scoreboard players get @s ctf_kit
$execute store result storage ctf:game team$(team_num).kit_num_2 int 1 run scoreboard players get $plus_2 value

# Check if last kit
$function ctf:player/kit/swap/if_last with storage ctf:game team$(team_num)


# Swap to Next
$function ctf:player/kit/swap/swap with storage ctf:game team$(team_num)