@echo off & setlocal enabledelayedexpansion
cd..
set rootdir=%cd%
set projdir=%rootdir%\Client
cd..
set urootdir=%cd%
set copydir=%urootdir%\!rootdir:%urootdir%\=!_copy

echo %rootdir%
echo %projdir%
echo !copydir!

if not exist !copydir! ( md !copydir!)

mklink/J !copydir!\Assets %projdir%\Assets

mklink/J !copydir!\ProjectSettings %projdir%\ProjectSettings

pause
