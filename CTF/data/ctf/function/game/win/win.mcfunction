# Stop Game
data modify storage ctf:game started set value false

# Set Winner
$title @a[tag=ctf_player] title {"text":"Team $(team_num) has won!","bold": true, "color": "$(color)"}

# Schedule end
schedule function ctf:game/end 5s append