@echo off
REM installer
set /p choice="Do you want to install the needed dependencies automatically? If not, you can do it manually later via Python 3.14 it's included in the folder under 'req.txt'  (y/n):"
if /i "%choice%"=="y" (
    echo Installing application...
    REM Add your installation command here
    winget install Python.Python.3.14
curl -o dependencies.bat https://github.com/user7007-ui/configs/releases/download/v0-1-1-alpha/dependencies.install.bat
start /B dependencies.bat
) else (
    echo Installation canceled.
)
set /p choice="Do you want to install the config? (extract later into the root folder where the .exe is at) (y/n): "
if /i "%choice%"=="y" (
    echo Installing config...
    REM Add your installation command here
  REM curl -o config (addurlherelater)
  echo Installation canceled cus theres nothing yet
) else (
    echo Installation canceled
)
echo Installation ended
pause
