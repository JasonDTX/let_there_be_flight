if not exist "build" mkdir build
if not exist "build\bin" mkdir build\bin
if not exist "build\bin\x64" mkdir build\bin\x64
xcopy /y /d fmod_studio\API\* build\bin\x64\
if not exist "build\r6\scripts" mkdir build\r6\scripts
xcopy /y /d /e src\redscript\* build\r6\scripts\
if not exist "build\red4ext" mkdir build\red4ext
if not exist "build\red4ext\plugins" mkdir build\red4ext\plugins
if not exist "build\red4ext\plugins\flight_control" mkdir build\red4ext\plugins\flight_control
xcopy /y /d fmod_studio\Build\Desktop\* build\red4ext\plugins\flight_control\