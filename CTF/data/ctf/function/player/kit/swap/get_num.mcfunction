# Check if last kit
$execute if entity @s[scores={ctf_kit=1..}] unless entity @s[scores={ctf_kit_swap_cd=1..}] run function ctf:player/kit/swap/if_last with storage ctf:game team$(team_num)

# Next Kit
execute unless entity @s[scores={ctf_kit_swap_cd=1..}] run scoreboard players add @s ctf_kit 1


# +1 Kit Num
# Store Kit Number and
scoreboard players operation $plus_1 value = @s ctf_kit
scoreboard players add $plus_1 value 1


# Store Kit Number and +1
$execute store result storage ctf:game team$(team_num).kit_num int 1 run scoreboard players get @s ctf_kit
$execute store result storage ctf:game team$(team_num).kit_num_1 int 1 run scoreboard players get $plus_1 value

# Store Kit Number and +1
execute store result storage ctf:temp kit_swap.kit_num int 1 run scoreboard players get @s ctf_kit
execute store result storage ctf:temp kit_swap.kit_num_1 int 1 run scoreboard players get $plus_1 value
data modify storage ctf:temp kit_swap.map set from storage ctf:game map
data modify storage ctf:temp kit_swap.container set value container



# Swap to Next
$function ctf:player/kit/swap/swap with storage ctf:game team$(team_num)