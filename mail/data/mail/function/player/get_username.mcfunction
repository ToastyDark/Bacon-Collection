# https://www.reddit.com/r/MinecraftCommands/comments/1cu1prd/wiki_update_restoring_scoreboards_after_changing/

# Store the user's name into mail:temporary_username
loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot mail:player_head
data modify storage mail:temporary_username name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.components."minecraft:profile".name