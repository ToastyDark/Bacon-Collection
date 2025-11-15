# Initialize steps (moves every half a block)
scoreboard players set @s steps 8

# Move the ray
execute at @s run function ctf:game/flag/claw/ray/move

# Check if the ray found a Claw Block
$execute as @s[tag=hitBlock] at @s align xyz if block ~0.5 ~0.5 ~0.5 #ctf_flag_claw run function ctf:game/flag/claw/block/check_if_flag with storage ctf:game team$(ops_team_num)
# Check if still hitting a Claw Block
$execute as @s[tag=hitBlock,tag=still_flag] at @s run function ctf:game/flag/claw/block/check_if_still with storage ctf:game team$(ops_team_num)
# If not hitting a Claw Block, reset
execute as @s[tag=hitBlock] unless block ~ ~ ~ #ctf_flag_claw run function ctf:game/flag/claw/modify/reset

particle flame ~ ~ ~ 0 0 0 0 1 force

# Remove Ray
kill @s