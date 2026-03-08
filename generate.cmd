@echo off
if "%~1"=="" (
    echo Usage: generate.cmd ^<version^>
    exit /b 1
)
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
) > index.html
echo Generated index.html with version %VERSION%
