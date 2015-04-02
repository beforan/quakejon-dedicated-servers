c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\chiv_ds.txt

rem == Run Server ===
c:\steamcmd\chiv_ds\Binaries\Win32\UDKLogging.exe AOCFFA-Arena3_p?steamsockets -dedicated=true -seekfreeloadingserver -multihome=192.168.1.25 -Port=7779 -QueryPort=7780