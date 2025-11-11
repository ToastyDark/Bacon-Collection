# Initialize steps (moves every half a block)
scoreboard players set @s steps 8

# Move the ray
execute at @s run function ctf:game/flag/claw/ray/move

# Check if the ray found a Claw Block
$execute as @s[tag=hitClawBlock] at @s if block ~ ~ ~ #ctf_flag_claw run function ctf:game/flag/claw/block/check with storage ctf:game team$(ops_team_num)

# Remove Ray
kill @s