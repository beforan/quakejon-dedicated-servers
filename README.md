# Quakejon Dedicated Servers
This repository contains up-to-date scripts for installing / updating dedicated servers, and then running them with some defaults.
It's designed to avoid the need for me to re-read all the `steamcmd` / `srcds` documentation every time a LAN rolls around.

Currently all scripts are for servers distributed on **Steam**, but not all servers are **Source Dedicated Servers**.

## Requirements
The Steam Command Line tool `steamcmd` must be installed (i.e. downloaded and unzipped).

Currently shell scripts are only available for Windows, and assume an installation directory of `C:\steamcmd\`

## General script structure
Currently all complete scripts are structured very similarly. There are two files used for a complete run, currently:
* a Windows powershell script (`.ps1`)
* a `steamcmd` batch script (`.txt`)

Legacy Batch file equivalents of the PowerShell scripts are currently still available, but may require tweaking due to file renaming and path changes.

### Powershell script
This script can only be run if Powershell's `ExecutionPolicy` is at least `Bypass`.
It can be run from a batch file or shortcut by specifying the `ExecutionPolicy` temporarily for the Powershell session, e.g.

    powershell -ExecutionPolicy Bypass "path/to/script.ps1"

Alternatively the `ExecutionPolicy` can be set at a system level from an elevated PowerShell session:

    Set-ExecutionPolicy Bypass

##### Script functionality
* Change directory to the assumed `steamcmd` installation path
    * `C:\steamcmd\`
* Install / Update occurs automatically using `steamcmd`
    * runs the `steamcmd` batch script (e.g. `csgo.txt`)
* Dedicated server is run immediately afterwards with defaults

### SteamCMD script
This script is for `steamcmd.exe` and is platform agnostic, except for paths
##### Script functionality
* Login to SteamCMD
    * Anonymously where possible
    * Otherwise with username / password for a steam account
* specifies the install directory
    * sub-directory of `steamcmd` installation e.g. `C:\steamcmd\servers\csgo\`
* installs / updates and validates the steamapp
* quits SteamCMD

## Working scripts
Currently the following dedicated servers have confirmed working scripts. Check the Wiki for a roadmap of servers to be added
* Chivalry: Medieval Warfare
    * No admin yet
    * Can't be run concurrently with another Chivalry server
* Chivalry: Deadliest Warrior
    * No admin yet
    * Can't be run concurrently with another Chivalry server
* CounterStrike Global Offensive
* Half Life 2 Deathmatch
* Team Fortress 2
* Team Fortress 2: Prop Hunt Redux

All Source servers use `-fork` to improve system performance for concurrent instances of `srcds`.
All Source servers are configured to use `RCON`.