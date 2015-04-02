rem == Enter SteamCMD ===
c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\tf2_ds.txt

rem == Run Server ===
C:\steamcmd\tf2_ds\srcds -console -fork -usercon -game tf +map pl_goldrush +maxplayers 24 +sv_lan 1 +rcon_password qj123