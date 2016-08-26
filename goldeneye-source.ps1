# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\goldeneye-source.txt

# Run the server with defaults
cd servers/gesource
./srcds -console -fork -usercon -game ./gesource/ +map ge_archives +maxplayers 16 +sv_lan 1 +rcon_password qj123