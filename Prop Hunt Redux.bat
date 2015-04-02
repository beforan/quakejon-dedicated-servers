rem == Enter SteamCMD ===
c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\phr_ds.txt

rem == Run Server ===
C:\steamcmd\phr_ds\srcds -console -fork -usercon -game tf +map ph_canyon_a1 +hostname PropHunt +maxplayers 24 +sv_lan 1 +rcon_password qj123