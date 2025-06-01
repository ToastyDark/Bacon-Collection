# Create Open Groups
execute if data storage ctf:game {voicechat:open} run persistentgroup add ctf_team1 open true
execute if data storage ctf:game {voicechat:open} run persistentgroup add ctf_team2 open true

# Create Closed Groups
execute if data storage ctf:game {voicechat:closed} run persistentgroup add ctf_team1 normal true
execute if data storage ctf:game {voicechat:closed} run persistentgroup add ctf_team2 normal true

# Create Proxmity Group - ( Seperate Spectators )