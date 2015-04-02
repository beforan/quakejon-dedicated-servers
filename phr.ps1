# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\phr.txt

# Run the server with defaults
cd servers/phr
./srcds -console -fork -usercon -game tf +map ph_canyon_a1 +hostname PropHunt +maxplayers 24 +sv_lan 1 +rcon_password qj123