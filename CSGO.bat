rem == Enter SteamCMD ===
c:
cd \steamcmd

rem == Update Server ===

steamcmd +runscript scripts\csgo_ds.txt

rem == Run Server ===
C:\steamcmd\csgo_ds\srcds -console -fork -usercon -game csgo +map de_dust2 +sv_lan 1 +rcon_password qj123