# KH1FM-Memory-Map

This repository was created to collect information about the memory of Kingdom Hearts Final Mix. This should help the modding community to grow faster and make the process more beginner friendly.

The repo itself will contain a cheat table that can be used in Cheat Engine and JSON files for constant values.

The main work will be focused on the Wiki pages, where all the gathered information will be collected and displayed in a easy readable table format.

This repository is an very early stage and will be improved over time by community efforts.

# Example Scripts

All example lua scripts in this repo and the wiki require [LuaBackend v1.7.3-hook](https://github.com/Sirius902/LuaBackend/releases/tag/v1.7.3-hook) installed.
Make sure that the kh1 section in the LuaBackend.toml file looks like this:

```
[kh1]
scripts = [{ path = "scripts/kh1/", relative = true }]
base = 0x0
thread_struct = 0x22BAA20
exe = "KINGDOM HEARTS FINAL MIX.exe"
game_docs = "KINGDOM HEARTS HD 1.5+2.5 ReMIX"
```

Most scripts will use constants defined in module [Lua/ExampleScripts/io_packages/GlobalConstants.lua](https://github.com/HydroSulphide/KH1FM-Memory-Map/blob/main/Lua/ExampleScripts/io_packages/GlobalConstants.lua)
Just add this io_packages folder to the directory, where your lua scripts are located.