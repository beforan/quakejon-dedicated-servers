c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\chivdw_ds.txt

== Run Server ===
c:\steamcmd\chivdw_ds\Binaries\Win32\CDWLogging.exe FFA-Bamboo_small?steamsockets -dedicated=true -seekfreeloadingserver -multihome=192.168.1.226 -Port=7777 -QueryPort=7778