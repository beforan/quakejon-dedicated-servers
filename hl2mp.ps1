# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\hl2mp.txt

# Run the server with defaults
cd servers/hl2mp
./srcds -console -fork -usercon -game hl2mp +map dm_overwatch +maxplayers 24 +sv_lan 1 +rcon_password qj123