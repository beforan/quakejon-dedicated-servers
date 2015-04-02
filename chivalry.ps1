# Change to SteamCMD install directory
cd c:\steamcmd

# Update / Install the Server
./steamcmd +runscript scripts\chivalry.txt

# Run the server with defaults
cd servers/chivalry
./Binaries\Win32\UDKLogging.exe AOCFFA-Arena3_p?steamsockets -dedicated=true -seekfreeloadingserver -multihome=192.168.1.25 -Port=7779 -QueryPort=7780