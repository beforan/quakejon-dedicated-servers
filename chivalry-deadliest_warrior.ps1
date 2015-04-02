# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\chivalry-deadliest_warrior.txt

# Run the server with defaults
cd servers/chivalry-deadliest_warrior
./Binaries\Win32\CDWLogging.exe FFA-Bamboo_small?steamsockets -dedicated=true -seekfreeloadingserver -multihome=192.168.1.226 -Port=7777 -QueryPort=7778