@echo off
chcp 65001
setlocal enabledelayedexpansion

:: 1) Zone Name
:: 2) AAAA Recode Name
set yourDomain=

:: 1) Zone / Instructions / password
:: 1) Zone / Instructions / Benutzername
set token=

:: curl method
::set checkIPApi=ip.ddnspod.com
::for /f "delims=" %%i in ('curl -s6 !checkIPApi!') do set ipAddress=%%i

:: netsh method
for /f "tokens=5" %%i in ('netsh interface ipv6 show addresses ^| find "Public" ^| find "Preferred"') do (
    set ipAddress=%%i
)
echo IPv6: %ipAddress%

set url="https://dynv6.com/api/update?hostname=!yourDomain!&token=!token!&ipv6=!ipAddress!"

for /f "delims=" %%i in ( 'curl -s %url%' ) do set result=%%i
echo Update Result: %result%
