# Load config
$config = get-content -raw config.json | ConvertFrom-Json

$server = "csgo" # internal identifier for the server (SPOT)


# Do some paths work
$scriptspath = ResolveConfigPaths $config.paths.root $config.paths.scripts
$serverspath = ResolveConfigPaths $config.paths.root $config.paths.servers
$steamcmdpath = ResolveConfigPaths $config.paths.root $config.steamcmd.exepath

# change to the scripts path to prep a temporary SteamCMD script
cd $scriptspath

# prep the SteamCMD script
try {
  new-item "steamcmd.txt" -ItemType "file"
}
catch [System.IOException] {
  clear-content "steamcmd.txt"
}
finally {
  $steamscript = get-content "csgo.txt"
  foreach ($line in $steamscript) {
    # Make substitutions from config
    $result = $line -replace "<username>", $config.steamcmd.login.user
    $result = $result -replace "<password>", $config.steamcmd.login.pass
    $result = $result -replace "<installpath>" $serverspath
    
    # append the variable substituted line to the new temp script
    $result >> steamcmd.txt
  }
}

# Update / Install the Server using the new temp script
& (join-path $steamcmdpath "steamcmd") +runscript scripts\csgo.txt # RESUME FROM HERE!

# Run the server with defaults
cd servers/csgo
./srcds -console -fork -usercon -game csgo +map de_dust2 +sv_lan 1 +rcon_password qj123


# Helper functions
function ResolveConfigPaths {
  param{[string]$root, [string]$target}
  if ([System.IO.Path::isPathRooted($target)]) {
    $target
  } else {
    join-path $root $target
  }
}