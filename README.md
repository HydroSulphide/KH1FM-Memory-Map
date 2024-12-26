# KH1FM-Memory-Map

This repository was created to collect information about the memory of Kingdom Hearts Final Mix. This should help the modding community to grow faster and make the process more beginner friendly.

The repo itself will contain a cheat table that can be used in Cheat Engine and JSON files for constant values.

The main work will be focused on the Wiki pages, where all the gathered information will be collected and displayed in a easy readable table format.

This repository is an very early stage and will be improved over time by community efforts.

# Example Scripts

All example lua scripts in this repo and the wiki require [LuaBackend Hook](https://github.com/Sirius902/LuaBackend/releases) installed.

Most scripts will use constants defined in module [GlobalConstants.lua](https://github.com/HydroSulphide/KH1FM-Memory-Map/blob/main/Lua/ExampleScripts/io_packages/GlobalConstants.lua)
Just add this io_packages folder to the directory, where your lua scripts are located.

# Steam Deck

Guide to install LuaBackend and get Lua scripts to run on Steam Deck/Linux:
* Download LuaBackend hook and make sure your LuaBackend.toml looks like [this](https://github.com/HydroSulphide/KH1FM-Memory-Map/blob/main/Lua/LuaBackend.toml)
* Rename DBGHELP.dll to dinput8.dll
* Copy "dinput8.dll", "lua54.dll" and "LuaBackend.toml" in the same directory as "KINGDOM HEARTS FINAL MIX.exe" (default location: "/home/deck/.local/Steam/steamapps/common/KINGDOM HEARTS -HD 1.5+2.5 ReMIX-")
* Navigate to the "/Documents/My Games/KINGDOM HEARTS HD 1.5+2.5 ReMIX" directory of the KINGDOM HEARTS HD 1.5+2.5 ReMIX proton prefix: (default location: "/home/deck/.local/share/Steam/steamapps/compatdata/2552430/pfx_drive/users/steamuser/Documents/My Games/KINGDOM HEARTS HD 1.5+2.5 ReMIX")
* Inside this folder create a directory "scripts" and inside that directory create a directory called "kh1"
* Place your scripts inside this directory (default location: "/home/deck/.local/share/Steam/steamapps/compatdata/2552430/pfx_drive/users/steamuser/Documents/My Games/KINGDOM HEARTS HD 1.5+2.5 ReMIX/scripts/kh1")
* Open steam and navigate to "KINGDOM HEARTS -HD 1.5+2.5 ReMIX-" in your library and set following launch options (properties->general->launch options):```WINEDLLOVERRIDES="dinput8=n,b" %command%```

The last step is needed so that our dinput8.dll we copied before is used instead of the native one installed in the proton prefix

If you don't want to navigate to the scripts folder inside the prefix every time you install a script, you can define a custom path inside the LuaBackend.toml, that is not relative to the Documents folder inside the prefix. For example:
```
[kh1]
scripts = [{ path = "/home/deck/Documents/KINGDOM HEARTS HD 1.5+2.5 ReMIX/scripts/kh1/", relative = false }]
exe = "KINGDOM HEARTS FINAL MIX.exe"
game_docs = "My Games/KINGDOM HEARTS HD 1.5+2.5 ReMIX"
```