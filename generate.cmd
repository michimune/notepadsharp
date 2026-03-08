@echo off
if "%~1"=="" (
    echo Usage: generate.cmd ^<version^>
    exit /b 1
)
setlocal
set HTML=docs\index.html
set HTMLPATH="%~dp0%HTML%"
set "VERSION=%~1"
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="version" content="%VERSION%"^>
echo ^</head^>
echo ^<body^>
echo     ^<p^>%VERSION%^</p^>
echo ^</body^>
echo ^</html^>
) > %HTMLPATH%
echo Generated %HTML% with version %VERSION%
