# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\tf2.txt

# Run the server with defaults
cd servers/tf2
./srcds -console -fork -usercon -game tf +map pl_goldrush +maxplayers 24 +sv_lan 1 +rcon_password qj123