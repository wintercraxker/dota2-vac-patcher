@echo off
setlocal enabledelayedexpansion
set "s1=https://skinchanger.net"
set "s2=https://dota2changer.com"
set "s3=https://ru.dota2changer.com"
set "path1=C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta"
set "path2=C:\Program Files\Steam\steamapps\common\dota 2 beta"
set "path3=C:\SteamLibrary\steamapps\common\dota 2 beta"
set "path4=C:\Steam\steamapps\common\dota 2 beta"
set "path5=D:\SteamLibrary\steamapps\common\dota 2 beta"
set "path6=D:\Steam\steamapps\common\dota 2 beta"
set "path7=E:\SteamLibrary\steamapps\common\dota 2 beta"
set "path8=E:\Steam\steamapps\common\dota 2 beta"
set "path9=F:\SteamLibrary\steamapps\common\dota 2 beta"
set "path10=F:\Steam\steamapps\common\dota 2 beta"
set "path11=H:\SteamLibrary\steamapps\common\dota 2 beta"
set "path12=H:\Steam\steamapps\common\dota 2 beta"
set "path13=G:\SteamLibrary\steamapps\common\dota 2 beta"
set "path14=G:\Steam\steamapps\common\dota 2 beta"
set "dP=\game\bin\win64\"
set "dgP=\game\dota\"
set "gP="
set "ur=/PatchCache/fileCache/dota.signatures"
set "ubr=/PatchCache/fileCache/gameinfo_branchspecific.gi"
for %%p in ("%path1%" "%path2%" "%path3%" "%path4%" "%path5%" "%path6%" "%path7%" "%path8%" "%path9%" "%path10%" "%path11%" "%path12%" "%path13%" "%path14%") do (
    if exist "%%p!dEP!" (
        set "gP=%%p"
        goto :found
    )
)
if "!gP!"=="" (
    echo C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta - not found!.
    pause
    exit /b
)
:found
set "gP=!gP:"=!"
set "oFs=%gP%%dP%dota.signatures"
set "oFdg=%gP%%dgP%gameinfo_branchspecific.gi"
curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFs%" "%s1%%ur%"
if %errorlevel% neq 0 (
	curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFs%" "%s2%%ur%"
	if %errorlevel% neq 0 (
		curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFs%" "%s3%%ur%"
		goto :dS
	) else (goto :dS)
) else (goto :dS)
:dS
set "oFs=%gP%%dgP%gameinfo_branchspecific.gi"
curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFdg%" "%s1%%ubr%"
if %errorlevel% neq 0 (
	curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFdg%" "%s2%%ubr%"
	if %errorlevel% neq 0 (
		curl --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -k -o "%oFdg%" "%s3%%ubr%"
		goto :dgbS
	) else (goto :dgbS)
) else (goto :dgbS)
:dgbS
if not exist "%gP%\game\Dota2SkinChanger" mkdir "%gP%\game\Dota2SkinChanger"
copy "game\Dota2SkinChanger\pak01_dir.vpk" "%gP%\game\Dota2SkinChanger"
exit /b