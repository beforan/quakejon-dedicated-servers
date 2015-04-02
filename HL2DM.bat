rem == Enter SteamCMD ===
c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\hl2dm_ds.txt

rem == Run Server ===
C:\steamcmd\hl2dm_ds\srcds -console -fork -usercon -game hl2mp +map dm_overwatch +maxplayers 24 +sv_lan 1 +rcon_password qj123